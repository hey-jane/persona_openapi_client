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

# Unit tests for PersonaAPIClient::WebhookRequestAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PersonaAPIClient::WebhookRequestAttributes do
  let(:instance) { PersonaAPIClient::WebhookRequestAttributes.new }

  describe 'test an instance of WebhookRequestAttributes' do
    it 'should create an instance of WebhookRequestAttributes' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(PersonaAPIClient::WebhookRequestAttributes)
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "enabled_events"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["*", "account.created", "account.redacted", "account.archived", "account.restored", "account.consolidated", "account.tag-added", "account.tag-removed", "case.created", "case.assigned", "case.resolved", "case.reopened", "case.updated", "document.created", "document.submitted", "document.processed", "document.errored", "inquiry.created", "inquiry.expired", "inquiry.completed", "inquiry.failed", "inquiry.marked-for-review", "inquiry.approved", "inquiry.declined", "inquiry.transitioned", "inquiry-session.started", "inquiry-session.expired", "inquiry-session.canceled", "report/address-lookup.ready", "report/address-lookup.errored", "report/adverse-media.matched", "report/adverse-media.ready", "report/adverse-media.errored", "report/business-adverse-media.matched", "report/business-adverse-media.ready", "report/business-adverse-media.errored", "report/business-watchlist.ready", "report/business-watchlist.matched", "report/business-watchlist.errored", "report/email-address.ready", "report/email-address.errored", "report/phone-number.ready", "report/phone-number.errored", "report/profile.ready", "report/profile.errored", "report/politically-exposed-person.matched", "report/politically-exposed-person.ready", "report/politically-exposed-person.errored", "report/watchlist.matched", "report/watchlist.ready", "report/watchlist.errored", "selfie.created", "selfie.submitted", "selfie.processed", "selfie.errored", "transaction.created", "transaction.labeled", "transaction.redacted", "transaction.status-updated", "verification.created", "verification.submitted", "verification.passed", "verification.failed", "verification.requires-retry", "verification.canceled"])
      # validator.allowable_values.each do |value|
      #   expect { instance.enabled_events = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "api_version"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["2023-01-05", "2022-09-01", "2021-08-18", "2021-07-05", "2021-02-21", "2020-05-18"])
      # validator.allowable_values.each do |value|
      #   expect { instance.api_version = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "api_key_inflection"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["camel", "kebab", "snake"])
      # validator.allowable_values.each do |value|
      #   expect { instance.api_key_inflection = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "api_attributes_blocklist"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "file_access_token_expires_in"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "payload_filter"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "custom_http_headers"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
