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

# Unit tests for OpenapiClient::WorkflowsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WorkflowsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::WorkflowsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowsApi' do
    it 'should create an instance of WorkflowsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::WorkflowsApi)
    end
  end

  # unit tests for create_a_workflow_run
  # Create a Workflow Run
  # Creates a new Workflow Run.  Note: The payload is arbitrary and defined by the Workflow version trigger schema.
  # @param workflow_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
  # @option opts [CreateAWorkflowRunRequest] :create_a_workflow_run_request 
  # @return [CreateAWorkflowRun200Response]
  describe 'create_a_workflow_run test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_all_workflow_runs
  # List all Workflow Runs
  # Returns a list of your environment&#39;s workflow runs.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [ListAllAccountsPageParameter] :page 
  # @option opts [ListAllWorkflowRunsFilterParameter] :filter 
  # @return [ListAllWorkflowRuns200Response]
  describe 'list_all_workflow_runs test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_a_workflow_run
  # Retrieve a Workflow Run
  # Retrieves the details of an existing workflow run.
  # @param workflow_run_id Workflow Run&#39;s ID (starts with \&quot;wfr_\&quot;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :key_inflection Determines casing for the API response
  # @option opts [String] :idempotency_key Ensures the request is idempotent
  # @option opts [String] :persona_version 
  # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
  # @return [CreateAWorkflowRun200Response]
  describe 'retrieve_a_workflow_run test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end