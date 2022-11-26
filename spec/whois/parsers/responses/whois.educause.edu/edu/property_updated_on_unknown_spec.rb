# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.educause.edu/edu/property_updated_on_unknown.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.educause.edu", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.educause.edu/edu/property_updated_on_unknown.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.educause.edu")
    Whois::Parser.parser_for(part)
  end

  it "matches property_updated_on_unknown.expected" do
    expect(subject.updated_on).to eq(nil)
  end
end
