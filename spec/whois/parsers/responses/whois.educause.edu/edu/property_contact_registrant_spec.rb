# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.educause.edu/edu/property_contact_registrant.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.educause.edu", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.educause.edu/edu/property_contact_registrant.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.educause.edu")
    Whois::Parser.parser_for(part)
  end

  it "matches property_contact_registrant.expected" do
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq(nil)
    expect(subject.registrant_contacts[0].organization).to eq("North Idaho College")
    expect(subject.registrant_contacts[0].address).to eq("1000 W. Garden Avenue")
    expect(subject.registrant_contacts[0].city).to eq("Coeur d'Alene")
    expect(subject.registrant_contacts[0].zip).to eq("83814")
    expect(subject.registrant_contacts[0].state).to eq("ID")
    expect(subject.registrant_contacts[0].country).to eq("UNITED STATES")
    expect(subject.registrant_contacts[0].country_code).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq(nil)
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq(nil)
  end
end
