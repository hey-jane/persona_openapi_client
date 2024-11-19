=begin
#Persona API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-01-05
Contact: support@withpersona.com
Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::APIKeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'APIKeysApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::APIKeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of APIKeysApi' do
    it 'should create an instance of APIKeysApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::APIKeysApi)
    end
  end

  # unit tests for create_an_api_key
  # Create an API key
  # Creates a new API key with response defaults and permissions.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
  # @option opts [CreateAnApiKeyRequest] :create_an_api_key_request 
  # @return [CreateAnApiKey201Response]
  describe 'create_an_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for expire_an_api_key
  # Expire an API key
  # Deactivates an API key within some time period
  # @param api_key_id API key&#39;s ID (starts with \&quot;api_\&quot;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
  # @option opts [ExpireAnApiKeyRequest] :expire_an_api_key_request 
  # @return [UpdateAnApiKey200Response]
  describe 'expire_an_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_all_api_keys
  # List all API keys
  # Returns a list of your organization&#39;s API keys.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [ListAllAccountsPageParameter] :page 
  # @option opts [ListAllApiKeysFilterParameter] :filter 
  # @return [ListAllApiKeys200Response]
  describe 'list_all_api_keys test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_an_api_key
  # Retrieve an API key
  # Retrieves the information for an existing API key, including its value.
  # @param api_key_id API key&#39;s ID (starts with \&quot;api_\&quot;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
  # @return [CreateAnApiKey201Response]
  describe 'retrieve_an_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_an_api_key
  # Update an API key
  # Updates an existing API key.
  # @param api_key_id API key&#39;s ID (starts with \&quot;api_\&quot;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
  # @option opts [CreateAnApiKeyRequest] :create_an_api_key_request 
  # @return [UpdateAnApiKey200Response]
  describe 'update_an_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end