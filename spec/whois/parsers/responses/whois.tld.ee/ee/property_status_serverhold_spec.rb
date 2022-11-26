# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tld.ee/ee/property_status_serverhold.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.tld.ee", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.tld.ee/ee/property_status_serverhold.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.tld.ee")
    Whois::Parser.parser_for(part)
  end

  it "matches property_status_serverhold.expected" do
    expect(subject.disclaimer).to eq("Estonia .ee Top Level Domain WHOIS server\nMore information at http://internet.ee")
    expect(subject.domain).to eq("samanacrafts.ee")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:expired)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2014-11-01 20:38:55 +02:00"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2014-11-01 20:38:55 +02:00"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2015-11-01"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.name).to eq("Edicy OÜ")
    expect(subject.registrar.url).to eq("http://www.edicy.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq("Anastassia Hisamova")
    expect(subject.registrant_contacts[0].organization).to eq(nil)
    expect(subject.registrant_contacts[0].address).to eq(nil)
    expect(subject.registrant_contacts[0].city).to eq(nil)
    expect(subject.registrant_contacts[0].zip).to eq(nil)
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq(nil)
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq("Not Disclosed - Visit www.internet.ee for webbased WHOIS")
    expect(subject.registrant_contacts[0].created_on).to eq(nil)
    expect(subject.registrant_contacts[0].updated_on).to eq(DateTime.parse("2014-11-01 20:38:55 +02:00"))
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(2)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq(nil)
    expect(subject.admin_contacts[0].name).to eq("Anastassia Hisamova")
    expect(subject.admin_contacts[0].organization).to eq(nil)
    expect(subject.admin_contacts[0].address).to eq(nil)
    expect(subject.admin_contacts[0].city).to eq(nil)
    expect(subject.admin_contacts[0].zip).to eq(nil)
    expect(subject.admin_contacts[0].state).to eq(nil)
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].country_code).to eq(nil)
    expect(subject.admin_contacts[0].phone).to eq(nil)
    expect(subject.admin_contacts[0].fax).to eq(nil)
    expect(subject.admin_contacts[0].email).to eq("Not Disclosed - Visit www.internet.ee for webbased WHOIS")
    expect(subject.admin_contacts[0].created_on).to eq(nil)
    expect(subject.admin_contacts[0].updated_on).to eq(DateTime.parse("2014-11-01 20:38:55 +02:00"))
    expect(subject.admin_contacts[1]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[1].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[1].id).to eq(nil)
    expect(subject.admin_contacts[1].name).to eq("Anastassia Hisamova")
    expect(subject.admin_contacts[1].organization).to eq(nil)
    expect(subject.admin_contacts[1].address).to eq(nil)
    expect(subject.admin_contacts[1].city).to eq(nil)
    expect(subject.admin_contacts[1].zip).to eq(nil)
    expect(subject.admin_contacts[1].state).to eq(nil)
    expect(subject.admin_contacts[1].country).to eq(nil)
    expect(subject.admin_contacts[1].country_code).to eq(nil)
    expect(subject.admin_contacts[1].phone).to eq(nil)
    expect(subject.admin_contacts[1].fax).to eq(nil)
    expect(subject.admin_contacts[1].email).to eq("Not Disclosed - Visit www.internet.ee for webbased WHOIS")
    expect(subject.admin_contacts[1].created_on).to eq(nil)
    expect(subject.admin_contacts[1].updated_on).to eq(DateTime.parse("2014-11-01 20:38:55 +02:00"))
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq(nil)
    expect(subject.technical_contacts[0].name).to eq("Priit Haamer")
    expect(subject.technical_contacts[0].organization).to eq(nil)
    expect(subject.technical_contacts[0].address).to eq(nil)
    expect(subject.technical_contacts[0].city).to eq(nil)
    expect(subject.technical_contacts[0].zip).to eq(nil)
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq(nil)
    expect(subject.technical_contacts[0].fax).to eq(nil)
    expect(subject.technical_contacts[0].email).to eq("Not Disclosed - Visit www.internet.ee for webbased WHOIS")
    expect(subject.technical_contacts[0].created_on).to eq(nil)
    expect(subject.technical_contacts[0].updated_on).to eq(DateTime.parse("2010-12-09 16:08:33 +02:00"))
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns4.edicy.net")
    expect(subject.nameservers[0].ipv4).to eq(nil)
    expect(subject.nameservers[0].ipv6).to eq(nil)
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns3.edicy.net")
    expect(subject.nameservers[1].ipv4).to eq(nil)
    expect(subject.nameservers[1].ipv6).to eq(nil)
  end
end
