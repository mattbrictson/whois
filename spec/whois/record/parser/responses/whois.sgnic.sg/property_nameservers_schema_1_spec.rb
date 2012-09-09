# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.sgnic.sg/property_nameservers_schema_1.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.sgnic.sg.rb'

describe Whois::Record::Parser::WhoisSgnicSg, "property_nameservers_schema_1.expected" do

  before(:each) do
    file = fixture("responses", "whois.sgnic.sg/property_nameservers_schema_1.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "ns1.google.com"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "ns2.google.com"
      @parser.nameservers[2].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[2].name.should == "ns3.google.com"
      @parser.nameservers[3].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[3].name.should == "ns4.google.com"
    end
  end
end
