# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.iis.nu/nu/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.iis.nu", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.iis.nu/nu/status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.iis.nu")
    Whois::Parser.parser_for(part)
  end

  it "matches status_available.expected" do
    expect(subject.disclaimer).to eq("Copyright (c) 1997- .SE (The Internet Infrastructure Foundation). All rights reserved. The information obtained through searches, or otherwise, is protected by the Swedish Copyright Act (1960:729) and international conventions. It is also subject to database protection according to the Swedish Copyright Act. # Any use of this material to target advertising or similar activities is forbidden and will be prosecuted. If any of the information below is transferred to a third party, it must be done in its entirety. This server must not be used as a backend for a search engine. Result of search for registered domain names under the .nu top level domain. This whois printout is printed with UTF-8 encoding.")
    expect(subject.domain).to eq(nil)
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:available)
    expect(subject.available?).to eq(true)
    expect(subject.registered?).to eq(false)
    expect(subject.created_on).to eq(nil)
    expect(subject.updated_on).to eq(nil)
    expect(subject.expires_on).to eq(nil)
    expect(subject.registrar).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts).to eq([])
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts).to eq([])
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts).to eq([])
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers).to eq([])
  end
end
