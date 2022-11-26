# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.ve/ve/property_nameservers_missing.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.ve", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.ve/ve/property_nameservers_missing.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.ve")
    Whois::Parser.parser_for(part)
  end

  it "matches property_nameservers_missing.expected" do
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers).to eq([])
  end
end
