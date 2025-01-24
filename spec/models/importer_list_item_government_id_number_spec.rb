=begin
#Persona API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-01-05
Contact: support@withpersona.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PersonaAPIClient::ImporterListItemGovernmentIdNumber
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PersonaAPIClient::ImporterListItemGovernmentIdNumber do
  let(:instance) { PersonaAPIClient::ImporterListItemGovernmentIdNumber.new }

  describe 'test an instance of ImporterListItemGovernmentIdNumber' do
    it 'should create an instance of ImporterListItemGovernmentIdNumber' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(PersonaAPIClient::ImporterListItemGovernmentIdNumber)
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["importer/list-item/government-id-number"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "attributes"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
