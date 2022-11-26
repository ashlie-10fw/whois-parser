# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ua/ua/uaepp/property_status_pendingdelete.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.ua", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.ua/ua/uaepp/property_status_pendingdelete.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.ua")
    Whois::Parser.parser_for(part)
  end

  it "matches property_status_pendingdelete.expected" do
    expect(subject.status).to eq(:redemption)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
  end
end
