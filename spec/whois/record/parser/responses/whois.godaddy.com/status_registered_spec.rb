# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.godaddy.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.godaddy.com.rb'

describe Whois::Record::Parser::WhoisGodaddyCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.godaddy.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect { subject.status }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq(nil)
      expect(subject.registrar.name).to eq("GoDaddy.com, LLC")
      expect(subject.registrar.organization).to eq(nil)
      expect(subject.registrar.url).to eq("http://www.godaddy.com")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].name).to eq("Go Daddy Go Daddy")
      expect(subject.registrant_contacts[0].organization).to eq("Go Daddy")
      expect(subject.registrant_contacts[0].address).to eq("14455 N Hayden Rd Suite 219")
      expect(subject.registrant_contacts[0].city).to eq("Scottsdale")
      expect(subject.registrant_contacts[0].zip).to eq("85260")
      expect(subject.registrant_contacts[0].state).to eq("Arizona")
      expect(subject.registrant_contacts[0].country).to eq("United States")
      expect(subject.registrant_contacts[0].phone).to eq(nil)
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq(nil)
      expect(subject.registrant_contacts[0].created_on).to eq(nil)
      expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].name).to eq("Go Daddy Go Daddy")
      expect(subject.admin_contacts[0].organization).to eq("Go Daddy")
      expect(subject.admin_contacts[0].address).to eq("14455 N Hayden Rd Suite 219")
      expect(subject.admin_contacts[0].city).to eq("Scottsdale")
      expect(subject.admin_contacts[0].zip).to eq("85260")
      expect(subject.admin_contacts[0].state).to eq("Arizona")
      expect(subject.admin_contacts[0].country).to eq("United States")
      expect(subject.admin_contacts[0].phone).to eq("+1.4805058800")
      expect(subject.admin_contacts[0].fax).to eq("+1.4805058844")
      expect(subject.admin_contacts[0].email).to eq("dns@jomax.net")
      expect(subject.admin_contacts[0].created_on).to eq(nil)
      expect(subject.admin_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].name).to eq("Go Daddy Go Daddy")
      expect(subject.technical_contacts[0].organization).to eq("Go Daddy")
      expect(subject.technical_contacts[0].address).to eq("14455 N Hayden Rd Suite 219")
      expect(subject.technical_contacts[0].city).to eq("Scottsdale")
      expect(subject.technical_contacts[0].zip).to eq("85260")
      expect(subject.technical_contacts[0].state).to eq("Arizona")
      expect(subject.technical_contacts[0].country).to eq("United States")
      expect(subject.technical_contacts[0].phone).to eq("+1.4805058800")
      expect(subject.technical_contacts[0].fax).to eq("+1.4805058844")
      expect(subject.technical_contacts[0].email).to eq("dns@jomax.net")
      expect(subject.technical_contacts[0].created_on).to eq(nil)
      expect(subject.technical_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(3)
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("CNS1.SECURESERVER.NET")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("CNS2.SECURESERVER.NET")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("CNS3.SECURESERVER.NET")
      expect(subject.nameservers[2].ipv4).to eq(nil)
      expect(subject.nameservers[2].ipv6).to eq(nil)
    end
  end
end
