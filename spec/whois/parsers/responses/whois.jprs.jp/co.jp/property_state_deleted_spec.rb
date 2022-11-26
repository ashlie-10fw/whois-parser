# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.jprs.jp/co.jp/property_state_deleted.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.jprs.jp", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.jprs.jp/co.jp/property_state_deleted.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.jprs.jp")
    Whois::Parser.parser_for(part)
  end

  it "matches property_state_deleted.expected" do
    expect(subject.status).to eq(:suspended)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
  end
end
