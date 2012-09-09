# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/se.net/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.centralnic.com/se.net/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/"
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "hotel.se.net"
    end
  end
  describe "#domain_id" do
    it do
      @parser.domain_id.should == "CNIC-DO803850"
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == ["OK"]
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
      @parser.created_on.should == Time.parse("2011-09-29 12:10:36 UTC")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2011-11-29 02:15:36 UTC")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2012-09-29 23:59:59 UTC")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(Whois::Record::Registrar)
      @parser.registrar.id.should           == "H269407"
      @parser.registrar.name.should         == nil
      @parser.registrar.organization.should == "Public Domain Registry Inc."
      @parser.registrar.url.should          == "www.publicdomainregistry.com"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == "H280468"
      @parser.registrant_contacts[0].name.should          == "Domain Admin"
      @parser.registrant_contacts[0].organization.should  == "PrivacyProtect.org"
      @parser.registrant_contacts[0].address.should       == "ID#10760, PO Box 16\nNote - All Postal Mails Rejected, visit Privacyprotect.org"
      @parser.registrant_contacts[0].city.should          == "Nobby Beach"
      @parser.registrant_contacts[0].zip.should           == "QLD 4218"
      @parser.registrant_contacts[0].state.should         == nil
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == "AU"
      @parser.registrant_contacts[0].phone.should         == "+45.36946676"
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == "contact@privacyprotect.org"
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == "H280468"
      @parser.admin_contacts[0].name.should          == "Domain Admin"
      @parser.admin_contacts[0].organization.should  == "PrivacyProtect.org"
      @parser.admin_contacts[0].address.should       == "ID#10760, PO Box 16\nNote - All Postal Mails Rejected, visit Privacyprotect.org"
      @parser.admin_contacts[0].city.should          == "Nobby Beach"
      @parser.admin_contacts[0].zip.should           == "QLD 4218"
      @parser.admin_contacts[0].state.should         == nil
      @parser.admin_contacts[0].country.should       == nil
      @parser.admin_contacts[0].country_code.should  == "AU"
      @parser.admin_contacts[0].phone.should         == "+45.36946676"
      @parser.admin_contacts[0].fax.should           == nil
      @parser.admin_contacts[0].email.should         == "contact@privacyprotect.org"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == "H280468"
      @parser.technical_contacts[0].name.should          == "Domain Admin"
      @parser.technical_contacts[0].organization.should  == "PrivacyProtect.org"
      @parser.technical_contacts[0].address.should       == "ID#10760, PO Box 16\nNote - All Postal Mails Rejected, visit Privacyprotect.org"
      @parser.technical_contacts[0].city.should          == "Nobby Beach"
      @parser.technical_contacts[0].zip.should           == "QLD 4218"
      @parser.technical_contacts[0].state.should         == nil
      @parser.technical_contacts[0].country.should       == nil
      @parser.technical_contacts[0].country_code.should  == "AU"
      @parser.technical_contacts[0].phone.should         == "+45.36946676"
      @parser.technical_contacts[0].fax.should           == nil
      @parser.technical_contacts[0].email.should         == "contact@privacyprotect.org"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "ns2020.hostgator.com"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "ns2019.hostgator.com"
    end
  end
end
