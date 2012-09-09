# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/kr.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.centralnic.com/kr.com/status_registered.txt")
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
      @parser.domain.should == "academyart.kr.com"
    end
  end
  describe "#domain_id" do
    it do
      @parser.domain_id.should == "CNIC-DO569707"
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
      @parser.status.should == ["TRANSFER PROHIBITED"]
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
      @parser.created_on.should == Time.parse("2008-06-11 21:25:43 UTC")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2011-04-17 00:17:42 UTC")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2014-06-11 23:59:59 UTC")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(Whois::Record::Registrar)
      @parser.registrar.id.should           == "H292913"
      @parser.registrar.name.should         == nil
      @parser.registrar.organization.should == "Network Solutions LLC"
      @parser.registrar.url.should          == "http://www.networksolutions.com/"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == "41619876"
      @parser.registrant_contacts[0].name.should          == "Academy of  Art College"
      @parser.registrant_contacts[0].organization.should  == "Academy of  Art College"
      @parser.registrant_contacts[0].address.should       == "79 NEW MONTGOMERY ST"
      @parser.registrant_contacts[0].city.should          == "SAN FRANCISCO"
      @parser.registrant_contacts[0].zip.should           == "94105"
      @parser.registrant_contacts[0].state.should         == "CA"
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == "US"
      @parser.registrant_contacts[0].phone.should         == "+1.415618350"
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == "clefferts@academyart.edu"
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == "41619876"
      @parser.admin_contacts[0].name.should          == "Academy of  Art College"
      @parser.admin_contacts[0].organization.should  == "Academy of  Art College"
      @parser.admin_contacts[0].address.should       == "79 NEW MONTGOMERY ST"
      @parser.admin_contacts[0].city.should          == "SAN FRANCISCO"
      @parser.admin_contacts[0].zip.should           == "94105"
      @parser.admin_contacts[0].state.should         == "CA"
      @parser.admin_contacts[0].country.should       == nil
      @parser.admin_contacts[0].country_code.should  == "US"
      @parser.admin_contacts[0].phone.should         == "+1.415618350"
      @parser.admin_contacts[0].fax.should           == nil
      @parser.admin_contacts[0].email.should         == "clefferts@academyart.edu"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == "41619876"
      @parser.technical_contacts[0].name.should          == "Academy of  Art College"
      @parser.technical_contacts[0].organization.should  == "Academy of  Art College"
      @parser.technical_contacts[0].address.should       == "79 NEW MONTGOMERY ST"
      @parser.technical_contacts[0].city.should          == "SAN FRANCISCO"
      @parser.technical_contacts[0].zip.should           == "94105"
      @parser.technical_contacts[0].state.should         == "CA"
      @parser.technical_contacts[0].country.should       == nil
      @parser.technical_contacts[0].country_code.should  == "US"
      @parser.technical_contacts[0].phone.should         == "+1.415618350"
      @parser.technical_contacts[0].fax.should           == nil
      @parser.technical_contacts[0].email.should         == "clefferts@academyart.edu"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(5).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "dbru.br.ns.els-gms.att.net"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "dmtu.mt.ns.els-gms.att.net"
      @parser.nameservers[2].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[2].name.should == "cbru.br.ns.els-gms.att.net"
      @parser.nameservers[3].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[3].name.should == "cmtu.mt.ns.els-gms.att.net"
      @parser.nameservers[4].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[4].name.should == "ns1.academyart.edu"
    end
  end
end
