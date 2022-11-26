# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.cz/cz/case_nset_contact_same_name.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.cz", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.cz/cz/case_nset_contact_same_name.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.cz")
    Whois::Parser.parser_for(part)
  end

  it "matches case_nset_contact_same_name.expected" do
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].id).to eq("WEBAREAL-CZ")
    expect(subject.technical_contacts[0].name).to eq("Jaroslav Hansal")
    expect(subject.technical_contacts[0].organization).to eq(nil)
    expect(subject.technical_contacts[0].address).to eq("Rudolfovská tř. 247/85\nČeské Budějovice\n37001\nCZ")
    expect(subject.technical_contacts[0].city).to eq(nil)
    expect(subject.technical_contacts[0].zip).to eq(nil)
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq(nil)
    expect(subject.technical_contacts[0].fax).to eq(nil)
    expect(subject.technical_contacts[0].email).to eq("info@webareal.cz")
    expect(subject.technical_contacts[0].created_on).to eq(DateTime.parse("2009-04-10 14:48:02"))
  end
end
