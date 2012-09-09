# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cctld.uz/property_expires_on_dash.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.cctld.uz.rb'

describe Whois::Record::Parser::WhoisCctldUz, "property_expires_on_dash.expected" do

  before(:each) do
    file = fixture("responses", "whois.cctld.uz/property_expires_on_dash.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#expires_on" do
    it do
      @parser.expires_on.should == nil
    end
  end
end
