# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.rnids.rs/rs/property_nameservers_hyphenated.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.rnids.rs", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.rnids.rs/rs/property_nameservers_hyphenated.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.rnids.rs")
    Whois::Parser.parser_for(part)
  end

  it "matches property_nameservers_hyphenated.expected" do
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("bits-hq.bitsyu.net")
    expect(subject.nameservers[0].ipv4).to eq("217.24.17.10")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("largo.bitsyu.net")
    expect(subject.nameservers[1].ipv4).to eq("217.24.17.80")
  end
end
