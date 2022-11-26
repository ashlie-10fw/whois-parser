# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.hu/hu/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.hu", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.hu/hu/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.hu")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect { subject.disclaimer }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.domain).to eq("google.hu")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2000-03-25 23:20:39"))
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.registrar }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.registrant_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.technical_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.nameservers }.to raise_error(Whois::AttributeNotSupported)
  end
end
