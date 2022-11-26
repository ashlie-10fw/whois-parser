# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ua/ua/uanic/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.ua", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.ua/ua/uanic/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.ua")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("kyivstar.ua")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2002-09-03 00:00:00"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2012-07-30 16:42:30"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2014-09-03 12:18:52"))
    expect { subject.registrar }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(0)
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("KG780-UANIC")
    expect(subject.admin_contacts[0].name).to eq(nil)
    expect(subject.admin_contacts[0].organization).to eq("Kyivstar GSM")
    expect(subject.admin_contacts[0].address).to eq("Chervonozoryanyi Av., 51")
    expect(subject.admin_contacts[0].city).to eq("KYIV")
    expect(subject.admin_contacts[0].zip).to eq("03110")
    expect(subject.admin_contacts[0].state).to eq(nil)
    expect(subject.admin_contacts[0].country).to eq("UA")
    expect(subject.admin_contacts[0].country_code).to eq(nil)
    expect(subject.admin_contacts[0].phone).to eq("+380 (67) 2372213")
    expect(subject.admin_contacts[0].fax).to eq("+380 (44) 2473954")
    expect(subject.admin_contacts[0].email).to eq("dnsmaster@kyivstar.net")
    expect(subject.admin_contacts[0].created_on).to eq(nil)
    expect(subject.admin_contacts[0].updated_on).to eq(DateTime.parse("2008-09-02 12:52:47"))
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(2)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("KG780-UANIC")
    expect(subject.technical_contacts[0].name).to eq(nil)
    expect(subject.technical_contacts[0].organization).to eq("Kyivstar GSM")
    expect(subject.technical_contacts[0].address).to eq("Chervonozoryanyi Av., 51")
    expect(subject.technical_contacts[0].city).to eq("KYIV")
    expect(subject.technical_contacts[0].zip).to eq("03110")
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq("UA")
    expect(subject.technical_contacts[0].country_code).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq("+380 (67) 2372213")
    expect(subject.technical_contacts[0].fax).to eq("+380 (44) 2473954")
    expect(subject.technical_contacts[0].email).to eq("dnsmaster@kyivstar.net")
    expect(subject.technical_contacts[0].created_on).to eq(nil)
    expect(subject.technical_contacts[0].updated_on).to eq(DateTime.parse("2008-09-02 12:52:47"))
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns2.elvisti.kiev.ua")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns.kyivstar.net")
  end
end
