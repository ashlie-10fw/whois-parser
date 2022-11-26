# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.register.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.register.com", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.register.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.register.com")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("register.com")
    expect(subject.domain_id).to eq("")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("1994-11-01T00:00:00-0500"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2009-08-26T00:00:00-0400"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2019-08-04T00:00:00-0400"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("9")
    expect(subject.registrar.name).to eq("Register.com")
    expect(subject.registrar.url).to eq("http://www.register.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].name).to eq("Domain Registrar")
    expect(subject.registrant_contacts[0].organization).to eq("Register.Com, Inc.")
    expect(subject.registrant_contacts[0].address).to eq("575 8th Avenue")
    expect(subject.registrant_contacts[0].city).to eq("New York")
    expect(subject.registrant_contacts[0].zip).to eq("10018")
    expect(subject.registrant_contacts[0].state).to eq("NY")
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.registrant_contacts[0].phone).to eq("+1.9027492701")
    expect(subject.registrant_contacts[0].fax).to eq("")
    expect(subject.registrant_contacts[0].email).to eq("domainregistrar@register.com")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].name).to eq("Domain Registrar")
    expect(subject.admin_contacts[0].organization).to eq("Register.Com, Inc.")
    expect(subject.admin_contacts[0].address).to eq("575 8th Avenue")
    expect(subject.admin_contacts[0].city).to eq("New York")
    expect(subject.admin_contacts[0].zip).to eq("10018")
    expect(subject.admin_contacts[0].state).to eq("NY")
    expect(subject.admin_contacts[0].country_code).to eq("US")
    expect(subject.admin_contacts[0].phone).to eq("+1.9027492701")
    expect(subject.admin_contacts[0].fax).to eq("")
    expect(subject.admin_contacts[0].email).to eq("domainregistrar@register.com")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].name).to eq("Domain Registrar")
    expect(subject.technical_contacts[0].organization).to eq("Register.Com, Inc.")
    expect(subject.technical_contacts[0].address).to eq("575 8th Avenue")
    expect(subject.technical_contacts[0].city).to eq("New York")
    expect(subject.technical_contacts[0].zip).to eq("10018")
    expect(subject.technical_contacts[0].state).to eq("NY")
    expect(subject.technical_contacts[0].country_code).to eq("US")
    expect(subject.technical_contacts[0].phone).to eq("+1.9027492701")
    expect(subject.technical_contacts[0].fax).to eq("")
    expect(subject.technical_contacts[0].email).to eq("domainregistrar@register.com")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(6)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns2.register.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns3.register.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns4.register.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns5.register.com")
    expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[4].name).to eq("ns6.register.com")
    expect(subject.nameservers[5]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[5].name).to eq("ns1.register.com")
  end
end
