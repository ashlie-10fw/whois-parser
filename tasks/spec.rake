require 'fileutils'
require 'whois'
require 'whois/parser'

namespace :spec do

  ROOT_DIR      = File.expand_path('..', __dir__)
  TARGET_DIR    = File.join(ROOT_DIR, %w[spec whois parsers responses])

  SOURCE_DIR    = File.join(ROOT_DIR, %w[spec fixtures responses])
  SOURCE_PARTS  = SOURCE_DIR.split("/")


  TPL_DESCRIBE = <<-RUBY.chomp!
# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   %{sfile}
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "%{khost}", :aggregate_failures do

  subject do
    file = fixture("responses", "%{fixture}")
    part = Whois::Record::Part.new(body: File.read(file), host: "%{khost}")
    Whois::Parser.parser_for(part)
  end

  it "matches %{descr}" do
%{matches}
  end
end
  RUBY

  TPL_MATCH = <<-RUBY.chomp!
    expect(subject.%{attribute}).to %{match}
  RUBY

  TPL_MATCH_SIZE = <<-RUBY.chomp!
    expect(subject.%{attribute}.size).to eq(%{size})
  RUBY

  TPL_MATCH_RAISE = <<-RUBY.chomp!
    expect { subject.%{attribute} }.to %{match}
  RUBY

  def relativize(path)
    path.gsub(ROOT_DIR, "")
  end


  task :generate => :generate_parsers

  task :generate_parsers do
    Dir["#{SOURCE_DIR}/**/*.expected"].each do |source_path|

      # Generate the filename and described_class name from the test file.
      parts = (source_path.split("/") - SOURCE_PARTS)
      khost = parts.first
      kfile = parts.last

      target_path = File.join(TARGET_DIR, *parts).gsub(".expected", "_spec.rb")

      # Extract the tests from the test file
      # and generates a Hash.
      #
      #   {
      #     "domain" => [
      #       ["%s", "== \"google.biz\""]
      #     ],
      #     "created_on" => [
      #       ["%s", "be_a(Time)"],
      #       ["%s", "== Time.parse(\"2002-03-27 00:01:00 UTC\")"]
      #     ]
      #   }
      #
      tests = {}
      match = nil
      lines = File.open(source_path, "r:UTF-8")
      lines.each do |line|
        line.chomp!
        case line
        when ""
          # skip empty line
        when /^\s*$/, %r{^\s*//}
          # skip comment line
        when /^#([^\s]+)/
          tests[match = Regexp.last_match(1)] = []
        when /^\s+(.+?) (.+)/
          tests[match] << _parse_assertion(Regexp.last_match(1), Regexp.last_match(2))
        else
          raise "Invalid Line `#{line}' in `#{source_path}'"
        end
      end

      # Generate the RSpec content and
      # write one file for every test.
      matches = tests.flat_map do |attr, specs|
        specs.map do |method, condition|
          attribute = method % attr
          case condition
          when /raise_error/
            format(TPL_MATCH_RAISE, attribute: attribute, match: condition)
          when /^%SIZE\{(\d+)\}$/
            format(TPL_MATCH_SIZE, attribute: attribute, size: Regexp.last_match(1))
          else
            format(TPL_MATCH, attribute: attribute, match: condition)
          end
        end
      end.join("\n")

      describe = <<-RUBY
#{TPL_DESCRIBE % {
  :khost            => khost,
  :descr            => kfile,
  :sfile            => relativize(source_path),
  :fixture          => parts.join("/").gsub(".expected", ".txt"),
  :matches          => matches
}}
      RUBY

      print "Generating #{relativize(target_path)}... "
      File.dirname(target_path).tap { |d| File.exist?(d) || FileUtils.mkdir_p(d) }
      File.write(target_path, describe)
      print "done!\n"
    end

  end


  def _parse_assertion(method, condition)
    m = method
    c = condition.strip

    case

    # %s %CLASS{time} -> %s be_a(time)
    when c =~ /^%CLASS\{(.+)\}$/
      c = "be_a(#{_build_condition_typeof(Regexp.last_match(1))})"

    # DateTime is better than Time here because it doesn't take local timezone into account (UTC by default)
    # and also parses timezones better (e.g. CET, JST, BST, etc..) at the end of the string
    # %s %TIME{...} -> %s DateTime.parse(...)
    when c =~ /^%TIME\{(.+)\}$/
      c = "eq(DateTime.parse(\"#{Regexp.last_match(1)}\"))"

    # %s %ERROR{...} -> %s raise_error(...)
    when c =~ /^%ERROR\{(.+)\}$/
      c = "raise_error(Whois::#{Regexp.last_match(1)})"

    # %s =~ "foo"
    when c =~ /^%MATCH\{(.+)\}$/
      c = "match(/#{Regexp.last_match(1)}/)"

    # %s == "foo"
    when c =~ /^== (.+)$/
      c = "eq(#{Regexp.last_match(1)})"

    end

    [m, c]
  end

  def _build_condition_typeof(described_class)
    case described_class
    when "array"      then "Array"
    when "time"       then "Time"
    when "contact"    then "Whois::Parser::Contact"
    when "registrar"  then "Whois::Parser::Registrar"
    when "nameserver" then "Whois::Parser::Nameserver"
    else
      raise "Unknown class `#{described_class}'"
    end
  end

  def _build_condition_typecast(described_class, value)
    case described_class
    when "time"
      %{Time.parse("#{value}")}
    else
      raise "Unknown class `#{described_class}'"
    end
  end

end
