# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.register.com/property_contacts_enom.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.register.com.rb'

describe Whois::Record::Parser::WhoisRegisterCom, "property_contacts_enom.expected" do

  before(:each) do
    file = fixture("responses", "whois.register.com/property_contacts_enom.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      lambda { @parser.status }.should raise_error(Whois::PropertyNotSupported)
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
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2002-03-14 00:19:48")
    end
  end
  describe "#updated_on" do
    it do
      lambda { @parser.updated_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2013-03-14 00:19:00")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(Whois::Record::Registrar)
      @parser.registrar.id.should           == nil
      @parser.registrar.name.should         == "Register.com"
      @parser.registrar.url.should          == "http://www.register.com/"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].name.should         == "Josh Cramer"
      @parser.registrant_contacts[0].organization.should == "Cramer Development"
      @parser.registrant_contacts[0].address.should      == "226 S. Clinton Street"
      @parser.registrant_contacts[0].city.should         == "Iowa City"
      @parser.registrant_contacts[0].zip.should          == "52240"
      @parser.registrant_contacts[0].state.should        == "IA"
      @parser.registrant_contacts[0].country_code.should == "US"
      @parser.registrant_contacts[0].phone.should        == nil
      @parser.registrant_contacts[0].fax.should          == nil
      @parser.registrant_contacts[0].email.should        == nil
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].name.should         == "Host Master"
      @parser.admin_contacts[0].organization.should == "Cramer Development Incorporated"
      @parser.admin_contacts[0].address.should      == "226 S Clinton St"
      @parser.admin_contacts[0].city.should         == "Iowa City"
      @parser.admin_contacts[0].zip.should          == "52245"
      @parser.admin_contacts[0].state.should        == "IA"
      @parser.admin_contacts[0].country_code.should == "US"
      @parser.admin_contacts[0].phone.should        == "+1.5152920050"
      @parser.admin_contacts[0].fax.should          == nil
      @parser.admin_contacts[0].email.should        == "domains@cramerdev.com"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].name.should         == "Host Master"
      @parser.technical_contacts[0].organization.should == "Cramer Development Incorporated"
      @parser.technical_contacts[0].address.should      == "226 S Clinton St"
      @parser.technical_contacts[0].city.should         == "Iowa City"
      @parser.technical_contacts[0].zip.should          == "52245"
      @parser.technical_contacts[0].state.should        == "IA"
      @parser.technical_contacts[0].country_code.should == "US"
      @parser.technical_contacts[0].phone.should        == "+1.5152920050"
      @parser.technical_contacts[0].fax.should          == nil
      @parser.technical_contacts[0].email.should        == "domains@cramerdev.com"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(5).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "dns01.gpn.register.com"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "dns02.gpn.register.com"
      @parser.nameservers[2].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[2].name.should == "dns03.gpn.register.com"
      @parser.nameservers[3].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[3].name.should == "dns04.gpn.register.com"
      @parser.nameservers[4].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[4].name.should == "dns05.gpn.register.com"
    end
  end
end
