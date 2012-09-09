# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.hu/schema-1.99/status_in_progress.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.hu.rb'

describe Whois::Record::Parser::WhoisNicHu, "status_in_progress.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.hu/schema-1.99/status_in_progress.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "Rights restricted by copyright. Szerzõi jog fenntartva.\n-Legal usage of this service requires that you agree to\nabide by the rules and conditions set forth at\nhttp://www.domain.hu/domain/English/domainsearch/feltetelek.html\n-A szolgaltatas csak a\nhttp://www.domain.hu/domain/domainsearch/feltetelek.html címen\nelérhetõ feltételek elfogadása és betartása mellett\nhasználható legálisan."
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "ezitvps.hu"
    end
  end
  describe "#domain_id" do
    it do
      @parser.domain_id.should == nil
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should == nil
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should == nil
    end
  end
  describe "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should == []
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should == []
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should == []
    end
  end
  describe "#zone_contact" do
    it do
      @parser.zone_contact.should == nil
    end
  end
  describe "#registrar_contact" do
    it do
      @parser.registrar_contact.should == nil
    end
  end
end
