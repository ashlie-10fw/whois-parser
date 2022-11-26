# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ati.tn/tn/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.ati.tn", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.ati.tn/tn/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.ati.tn")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("All rights reserved.\nCopyright \"Tunisian Internet Agency - http://whois.tn\"")
    expect(subject.domain).to eq("google.tn")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2009-05-14 00:00:00"))
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq(nil)
    expect(subject.registrar.name).to eq("3S Global Net")
    expect(subject.registrar.url).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq("GOOGLE Inc")
    expect(subject.registrant_contacts[0].organization).to eq(nil)
    expect(subject.registrant_contacts[0].address).to eq("PO BOX 2050 Moutain view CA 94042 USA")
    expect(subject.registrant_contacts[0].city).to eq(nil)
    expect(subject.registrant_contacts[0].zip).to eq(nil)
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq("+1 925 685 9600")
    expect(subject.registrant_contacts[0].fax).to eq("+1 925 685 9620")
    expect(subject.registrant_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.registrant_contacts[0].created_on).to eq(DateTime.parse("2009-05-14 00:00:00"))
    expect(subject.registrant_contacts[0].updated_on).to eq(DateTime.parse("2010-07-18 00:00:00"))
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq(nil)
    expect(subject.admin_contacts[0].name).to eq("GOOGLE Inc")
    expect(subject.admin_contacts[0].organization).to eq(nil)
    expect(subject.admin_contacts[0].address).to eq("PO BOX 2050 Moutain view CA 94042 USA")
    expect(subject.admin_contacts[0].city).to eq(nil)
    expect(subject.admin_contacts[0].zip).to eq(nil)
    expect(subject.admin_contacts[0].state).to eq(nil)
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].country_code).to eq(nil)
    expect(subject.admin_contacts[0].phone).to eq("+1 925 685 9600")
    expect(subject.admin_contacts[0].fax).to eq("+1 925 685 9620")
    expect(subject.admin_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.admin_contacts[0].created_on).to eq(DateTime.parse("2009-05-14 00:00:00"))
    expect(subject.admin_contacts[0].updated_on).to eq(DateTime.parse("2010-07-18 00:00:00"))
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq(nil)
    expect(subject.technical_contacts[0].name).to eq("GOOGLE Inc")
    expect(subject.technical_contacts[0].organization).to eq(nil)
    expect(subject.technical_contacts[0].address).to eq("PO BOX 2050 Moutain view CA 94042 USA")
    expect(subject.technical_contacts[0].city).to eq(nil)
    expect(subject.technical_contacts[0].zip).to eq(nil)
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq("+1 925 685 9600")
    expect(subject.technical_contacts[0].fax).to eq("+1 925 685 9620")
    expect(subject.technical_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.technical_contacts[0].created_on).to eq(DateTime.parse("2009-05-14 00:00:00"))
    expect(subject.technical_contacts[0].updated_on).to eq(DateTime.parse("2010-07-18 00:00:00"))
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[0].ipv4).to eq("216.239.32.10")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[1].ipv4).to eq("216.239.34.10")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.google.com")
    expect(subject.nameservers[2].ipv4).to eq("216.239.36.10")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.google.com")
    expect(subject.nameservers[3].ipv4).to eq("216.239.38.10")
  end
end
