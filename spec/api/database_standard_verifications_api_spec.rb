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

# Unit tests for PersonaAPIClient::DatabaseStandardVerificationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DatabaseStandardVerificationsApi' do
  before do
    # run before each test
    @api_instance = PersonaAPIClient::DatabaseStandardVerificationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DatabaseStandardVerificationsApi' do
    it 'should create an instance of DatabaseStandardVerificationsApi' do
      expect(@api_instance).to be_instance_of(PersonaAPIClient::DatabaseStandardVerificationsApi)
    end
  end

  # unit tests for retrieve_a_database_standard_verification
  # Retrieve a Database Standard Verification
  # Retrieve a database standard verification
  # @param verification_id ID of Verification to retrieve
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
  # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
  # @return [RetrieveADatabaseStandardVerification200Response]
  describe 'retrieve_a_database_standard_verification test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
