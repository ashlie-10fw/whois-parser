# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.gov.za/gov.za/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.gov.za", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.gov.za/gov.za/status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.gov.za")
    Whois::Parser.parser_for(part)
  end

  it "matches status_available.expected" do
    expect(subject.status).to eq(:available)
    expect(subject.available?).to eq(true)
    expect(subject.registered?).to eq(false)
    expect(subject.created_on).to eq(nil)
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.nameservers }.to raise_error(Whois::AttributeNotSupported)
  end
end
