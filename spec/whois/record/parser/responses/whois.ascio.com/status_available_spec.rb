# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ascio.com/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ascio.com.rb'

describe Whois::Record::Parser::WhoisAscioCom, "status_available.expected" do

  subject do
    file = fixture("responses", "whois.ascio.com/status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("The data in Ascio Technologies' WHOIS database is provided by Ascio Technologies for information purposes only. By submitting a WHOIS query, you agree that you will use this data only for lawful purpose. In addition, you agree not to: (a) use the data to allow, enable, or otherwise support any marketing activities, regardless of the medium used. Such media include but are not limited to e-mail, telephone, facsimile, postal mail, SMS, and wireless alerts; or (b) use the data to enable high volume, automated, electronic processes that sendqueries or data to the systems of any Registry Operator or ICANN-Accredited registrar, except as reasonably necessary to register domain names or modify existing registrations. (c) sell or redistribute the data except insofar as it has been incorporated into a value-added product or service that does not permit the extraction of a substantial portion of the bulk data from the value-added product or service for use by other parties. Ascio Technologies reserves the right to modify these terms at any time. Ascio Technologies cannot guarantee the accuracy of the data provided. By accessing and using Ascio Technologies WHOIS service, you agree to these terms.")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq(nil)
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to eq(nil)
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(nil)
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to eq(nil)
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to eq([])
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to eq([])
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to eq([])
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to eq([])
    end
  end
end