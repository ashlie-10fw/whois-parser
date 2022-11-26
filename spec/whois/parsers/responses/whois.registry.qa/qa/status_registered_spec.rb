# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registry.qa/qa/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.registry.qa", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.registry.qa/qa/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.registry.qa")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect { subject.disclaimer }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.domain).to eq("qtel.com.qa")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(["ok"])
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect { subject.created_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("QatarTelecom")
    expect(subject.registrar.name).to eq("Qatar Telecom (Qtel) Q. S. C")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("QT11734")
    expect(subject.registrant_contacts[0].name).to eq("DNS Administrator - Qtel Internet Services")
    expect(subject.registrant_contacts[0].organization).to eq(nil)
    expect(subject.registrant_contacts[0].address).to eq(nil)
    expect(subject.registrant_contacts[0].city).to eq(nil)
    expect(subject.registrant_contacts[0].zip).to eq(nil)
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq(nil)
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq("Visit www.domains.qa")
    expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("QT11734")
    expect(subject.technical_contacts[0].name).to eq("DNS Administrator - Qtel Internet Services")
    expect(subject.technical_contacts[0].organization).to eq(nil)
    expect(subject.technical_contacts[0].address).to eq(nil)
    expect(subject.technical_contacts[0].city).to eq(nil)
    expect(subject.technical_contacts[0].zip).to eq(nil)
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq(nil)
    expect(subject.technical_contacts[0].fax).to eq(nil)
    expect(subject.technical_contacts[0].email).to eq("Visit www.domains.qa")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.qtel.com.qa")
    expect(subject.nameservers[0].ipv4).to eq("212.77.203.185")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.qtel.com.qa")
    expect(subject.nameservers[1].ipv4).to eq("213.130.113.101")
  end
end
