# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/joburg-whois.registry.net.za/joburg/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "joburg-whois.registry.net.za", :aggregate_failures do

  subject do
    file = fixture("responses", "joburg-whois.registry.net.za/joburg/status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "joburg-whois.registry.net.za")
    Whois::Parser.parser_for(part)
  end

  it "matches status_available.expected" do
    expect(subject.domain).to eq(nil)
    expect(subject.domain_id).to eq(nil)
    expect(subject.status).to eq(:available)
    expect(subject.available?).to eq(true)
    expect(subject.registered?).to eq(false)
    expect(subject.created_on).to eq(nil)
    expect(subject.updated_on).to eq(nil)
    expect(subject.expires_on).to eq(nil)
    expect(subject.registrar).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts).to eq([])
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts).to eq([])
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts).to eq([])
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers).to eq([])
  end
end
