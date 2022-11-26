# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.it/it/property_status_client.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.it", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.it/it/property_status_client.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.it")
    Whois::Parser.parser_for(part)
  end

  it "matches property_status_client.expected" do
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
  end
end
