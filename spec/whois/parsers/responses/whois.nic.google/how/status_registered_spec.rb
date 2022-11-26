# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.google/how/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.google", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.google/how/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.google")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("google.how")
    expect(subject.domain_id).to eq("62CF6AF-HOW")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2015-01-12T16:14:39Z"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2019-02-14T19:53:11Z"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2020-01-12T16:14:39Z"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("292")
    expect(subject.registrar.name).to eq("MarkMonitor Inc.")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].organization).to eq("Google LLC")
    expect(subject.registrant_contacts[0].state).to eq("CA")
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.googledomains.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.googledomains.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.googledomains.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.googledomains.com")
  end
end
