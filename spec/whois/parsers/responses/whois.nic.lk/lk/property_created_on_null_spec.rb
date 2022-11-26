# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.lk/lk/property_created_on_null.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.lk", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.lk/lk/property_created_on_null.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.lk")
    Whois::Parser.parser_for(part)
  end

  it "matches property_created_on_null.expected" do
    expect(subject.created_on).to eq(nil)
  end
end
