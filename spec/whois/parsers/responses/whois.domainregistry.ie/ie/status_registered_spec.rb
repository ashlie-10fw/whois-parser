# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domainregistry.ie/ie/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.domainregistry.ie", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.domainregistry.ie/ie/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.domainregistry.ie")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("Rights restricted by copyright; http://iedr.ie/index.php/mnudomregs/mnudnssearch/96\nDo not remove this notice")
    expect(subject.domain).to eq("google.ie")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2002-03-21"))
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2015-03-21"))
    expect { subject.registrar }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq("Google, Inc")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("AAV410-IEDR")
    expect(subject.admin_contacts[0].name).to eq("Christina Chiou")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("CCA7-IEDR")
    expect(subject.technical_contacts[0].name).to eq("Markmonitor Inc")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(3)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.google.com")
  end
end
