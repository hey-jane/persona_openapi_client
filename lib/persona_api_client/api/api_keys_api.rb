=begin
#Persona API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-01-05
Contact: support@withpersona.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'cgi'

module PersonaAPIClient
  class APIKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an API key
    # Creates a new API key with response defaults and permissions.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @option opts [CreateAnApiKeyRequest] :create_an_api_key_request 
    # @return [CreateAnApiKey201Response]
    def create_an_api_key(opts = {})
      data, _status_code, _headers = create_an_api_key_with_http_info(opts)
      data
    end

    # Create an API key
    # Creates a new API key with response defaults and permissions.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @option opts [CreateAnApiKeyRequest] :create_an_api_key_request 
    # @return [Array<(CreateAnApiKey201Response, Integer, Hash)>] CreateAnApiKey201Response data, response status code and response headers
    def create_an_api_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.create_an_api_key ...'
      end
      allowable_values = ["camel", "kebab", "snake"]
      if @api_client.config.client_side_validation && opts[:'key_inflection'] && !allowable_values.include?(opts[:'key_inflection'])
        fail ArgumentError, "invalid value for \"key_inflection\", must be one of #{allowable_values}"
      end
      allowable_values = ["2023-01-05"]
      if @api_client.config.client_side_validation && opts[:'persona_version'] && !allowable_values.include?(opts[:'persona_version'])
        fail ArgumentError, "invalid value for \"persona_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api-keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Key-Inflection'] = opts[:'key_inflection'] if !opts[:'key_inflection'].nil?
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?
      header_params[:'Persona-Version'] = opts[:'persona_version'] if !opts[:'persona_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_an_api_key_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateAnApiKey201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"APIKeysApi.create_an_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#create_an_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expire an API key
    # Deactivates an API key within some time period
    # @param api_key_id [String] API key&#39;s ID (starts with \&quot;api_\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @option opts [ExpireAnApiKeyRequest] :expire_an_api_key_request 
    # @return [UpdateAnApiKey200Response]
    def expire_an_api_key(api_key_id, opts = {})
      data, _status_code, _headers = expire_an_api_key_with_http_info(api_key_id, opts)
      data
    end

    # Expire an API key
    # Deactivates an API key within some time period
    # @param api_key_id [String] API key&#39;s ID (starts with \&quot;api_\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @option opts [ExpireAnApiKeyRequest] :expire_an_api_key_request 
    # @return [Array<(UpdateAnApiKey200Response, Integer, Hash)>] UpdateAnApiKey200Response data, response status code and response headers
    def expire_an_api_key_with_http_info(api_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.expire_an_api_key ...'
      end
      # verify the required parameter 'api_key_id' is set
      if @api_client.config.client_side_validation && api_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_id' when calling APIKeysApi.expire_an_api_key"
      end
      allowable_values = ["camel", "kebab", "snake"]
      if @api_client.config.client_side_validation && opts[:'key_inflection'] && !allowable_values.include?(opts[:'key_inflection'])
        fail ArgumentError, "invalid value for \"key_inflection\", must be one of #{allowable_values}"
      end
      allowable_values = ["2023-01-05"]
      if @api_client.config.client_side_validation && opts[:'persona_version'] && !allowable_values.include?(opts[:'persona_version'])
        fail ArgumentError, "invalid value for \"persona_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api-keys/{api-key-id}/expire'.sub('{' + 'api-key-id' + '}', CGI.escape(api_key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Key-Inflection'] = opts[:'key_inflection'] if !opts[:'key_inflection'].nil?
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?
      header_params[:'Persona-Version'] = opts[:'persona_version'] if !opts[:'persona_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'expire_an_api_key_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'UpdateAnApiKey200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"APIKeysApi.expire_an_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#expire_an_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all API keys
    # Returns a list of your organization's API keys.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [ListAllAccountsPageParameter] :page 
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @option opts [ListAllApiKeysFilterParameter] :filter 
    # @return [ListAllApiKeys200Response]
    def list_all_api_keys(opts = {})
      data, _status_code, _headers = list_all_api_keys_with_http_info(opts)
      data
    end

    # List all API keys
    # Returns a list of your organization&#39;s API keys.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [ListAllAccountsPageParameter] :page 
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @option opts [ListAllApiKeysFilterParameter] :filter 
    # @return [Array<(ListAllApiKeys200Response, Integer, Hash)>] ListAllApiKeys200Response data, response status code and response headers
    def list_all_api_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.list_all_api_keys ...'
      end
      allowable_values = ["camel", "kebab", "snake"]
      if @api_client.config.client_side_validation && opts[:'key_inflection'] && !allowable_values.include?(opts[:'key_inflection'])
        fail ArgumentError, "invalid value for \"key_inflection\", must be one of #{allowable_values}"
      end
      allowable_values = ["2023-01-05"]
      if @api_client.config.client_side_validation && opts[:'persona_version'] && !allowable_values.include?(opts[:'persona_version'])
        fail ArgumentError, "invalid value for \"persona_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api-keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Key-Inflection'] = opts[:'key_inflection'] if !opts[:'key_inflection'].nil?
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?
      header_params[:'Persona-Version'] = opts[:'persona_version'] if !opts[:'persona_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListAllApiKeys200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"APIKeysApi.list_all_api_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#list_all_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an API key
    # Retrieves the information for an existing API key, including its value.
    # @param api_key_id [String] API key&#39;s ID (starts with \&quot;api_\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @return [CreateAnApiKey201Response]
    def retrieve_an_api_key(api_key_id, opts = {})
      data, _status_code, _headers = retrieve_an_api_key_with_http_info(api_key_id, opts)
      data
    end

    # Retrieve an API key
    # Retrieves the information for an existing API key, including its value.
    # @param api_key_id [String] API key&#39;s ID (starts with \&quot;api_\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @return [Array<(CreateAnApiKey201Response, Integer, Hash)>] CreateAnApiKey201Response data, response status code and response headers
    def retrieve_an_api_key_with_http_info(api_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.retrieve_an_api_key ...'
      end
      # verify the required parameter 'api_key_id' is set
      if @api_client.config.client_side_validation && api_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_id' when calling APIKeysApi.retrieve_an_api_key"
      end
      allowable_values = ["camel", "kebab", "snake"]
      if @api_client.config.client_side_validation && opts[:'key_inflection'] && !allowable_values.include?(opts[:'key_inflection'])
        fail ArgumentError, "invalid value for \"key_inflection\", must be one of #{allowable_values}"
      end
      allowable_values = ["2023-01-05"]
      if @api_client.config.client_side_validation && opts[:'persona_version'] && !allowable_values.include?(opts[:'persona_version'])
        fail ArgumentError, "invalid value for \"persona_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api-keys/{api-key-id}'.sub('{' + 'api-key-id' + '}', CGI.escape(api_key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Key-Inflection'] = opts[:'key_inflection'] if !opts[:'key_inflection'].nil?
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?
      header_params[:'Persona-Version'] = opts[:'persona_version'] if !opts[:'persona_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreateAnApiKey201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"APIKeysApi.retrieve_an_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#retrieve_an_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an API key
    # Updates an existing API key.
    # @param api_key_id [String] API key&#39;s ID (starts with \&quot;api_\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @option opts [CreateAnApiKeyRequest] :create_an_api_key_request 
    # @return [UpdateAnApiKey200Response]
    def update_an_api_key(api_key_id, opts = {})
      data, _status_code, _headers = update_an_api_key_with_http_info(api_key_id, opts)
      data
    end

    # Update an API key
    # Updates an existing API key.
    # @param api_key_id [String] API key&#39;s ID (starts with \&quot;api_\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :key_inflection Determines casing for the API response
    # @option opts [String] :idempotency_key Ensures the request is idempotent
    # @option opts [String] :persona_version  (default to '2023-01-05')
    # @option opts [String] :include A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#inclusion-of-related-resources) for more details.
    # @option opts [String] :fields A comma-separated list of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/reference/serialization#sparse-fieldsets) for more details.
    # @option opts [CreateAnApiKeyRequest] :create_an_api_key_request 
    # @return [Array<(UpdateAnApiKey200Response, Integer, Hash)>] UpdateAnApiKey200Response data, response status code and response headers
    def update_an_api_key_with_http_info(api_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.update_an_api_key ...'
      end
      # verify the required parameter 'api_key_id' is set
      if @api_client.config.client_side_validation && api_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_id' when calling APIKeysApi.update_an_api_key"
      end
      allowable_values = ["camel", "kebab", "snake"]
      if @api_client.config.client_side_validation && opts[:'key_inflection'] && !allowable_values.include?(opts[:'key_inflection'])
        fail ArgumentError, "invalid value for \"key_inflection\", must be one of #{allowable_values}"
      end
      allowable_values = ["2023-01-05"]
      if @api_client.config.client_side_validation && opts[:'persona_version'] && !allowable_values.include?(opts[:'persona_version'])
        fail ArgumentError, "invalid value for \"persona_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api-keys/{api-key-id}'.sub('{' + 'api-key-id' + '}', CGI.escape(api_key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Key-Inflection'] = opts[:'key_inflection'] if !opts[:'key_inflection'].nil?
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?
      header_params[:'Persona-Version'] = opts[:'persona_version'] if !opts[:'persona_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_an_api_key_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'UpdateAnApiKey200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"APIKeysApi.update_an_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#update_an_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
