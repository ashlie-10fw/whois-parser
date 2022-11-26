# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.yt/yt/response_throttled.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.yt", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.yt/yt/response_throttled.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.yt")
    Whois::Parser.parser_for(part)
  end

  it "matches response_throttled.expected" do
    expect(subject.response_throttled?).to eq(true)
  end
end
