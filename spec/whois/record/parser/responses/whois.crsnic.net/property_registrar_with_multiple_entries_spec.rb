# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.crsnic.net/property_registrar_with_multiple_entries.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.crsnic.net.rb'

describe Whois::Record::Parser::WhoisCrsnicNet, "property_registrar_with_multiple_entries.expected" do

  before(:each) do
    file = fixture("responses", "whois.crsnic.net/property_registrar_with_multiple_entries.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#registrar" do
    it do
      @parser.registrar.should be_a(Whois::Record::Registrar)
      @parser.registrar.id.should           == nil
      @parser.registrar.name.should         == "MARKMONITOR INC."
      @parser.registrar.organization.should == "MARKMONITOR INC."
      @parser.registrar.url.should          == "http://www.markmonitor.com"
    end
  end
end
