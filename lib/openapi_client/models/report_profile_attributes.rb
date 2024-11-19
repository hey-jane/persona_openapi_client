=begin
#Persona API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-01-05
Contact: support@withpersona.com
Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module OpenapiClient
  class ReportProfileAttributes
    # The status of the report  Possible values: - pending - ready - errored  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update.
    attr_accessor :status

    # The time the report was created in ISO 8601 format
    attr_accessor :created_at

    # The time the report completed processing in ISO 8601 format
    attr_accessor :completed_at

    # The time the report was redacted in ISO 8601 format
    attr_accessor :redacted_at

    # The name of the report template version used for this report
    attr_accessor :report_template_version_name

    # Whether or not the report matched
    attr_accessor :has_match

    # Whether or not this report has been run more than once
    attr_accessor :is_continuous

    # Whether or not this report is scheduled to run in the future
    attr_accessor :is_recurring

    # Tags on the report
    attr_accessor :tags

    # Given or first name.
    attr_accessor :name_first

    # Family or last name.
    attr_accessor :name_last

    # Birthdate, must be in the format \"YYYY-MM-DD\".
    attr_accessor :birthdate

    # Full social security number.
    attr_accessor :social_security_number

    # Last 4 digits of social security number.
    attr_accessor :social_security_number_last_4

    # Primary street address.
    attr_accessor :address_street_1

    # Secondary street address (if any).
    attr_accessor :address_street_2

    # City of residence.
    attr_accessor :address_city

    # State or subdivision of residence.
    attr_accessor :address_subdivision

    # State or subdivision abbreviation.
    attr_accessor :address_subdivision_abbr

    # ZIP or postal code.
    attr_accessor :address_postal_code

    # ZIP or postal code abbreviation (if applicable).
    attr_accessor :address_postal_code_abbr

    # Phone number.
    attr_accessor :phone_number

    # Detailed identity records if available.
    attr_accessor :identity_records

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'status',
        :'created_at' => :'created-at',
        :'completed_at' => :'completed-at',
        :'redacted_at' => :'redacted-at',
        :'report_template_version_name' => :'report-template-version-name',
        :'has_match' => :'has-match',
        :'is_continuous' => :'is-continuous',
        :'is_recurring' => :'is-recurring',
        :'tags' => :'tags',
        :'name_first' => :'name-first',
        :'name_last' => :'name-last',
        :'birthdate' => :'birthdate',
        :'social_security_number' => :'social-security-number',
        :'social_security_number_last_4' => :'social-security-number-last-4',
        :'address_street_1' => :'address-street-1',
        :'address_street_2' => :'address-street-2',
        :'address_city' => :'address-city',
        :'address_subdivision' => :'address-subdivision',
        :'address_subdivision_abbr' => :'address-subdivision-abbr',
        :'address_postal_code' => :'address-postal-code',
        :'address_postal_code_abbr' => :'address-postal-code-abbr',
        :'phone_number' => :'phone-number',
        :'identity_records' => :'identity-records'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'String',
        :'created_at' => :'String',
        :'completed_at' => :'String',
        :'redacted_at' => :'String',
        :'report_template_version_name' => :'String',
        :'has_match' => :'Boolean',
        :'is_continuous' => :'Boolean',
        :'is_recurring' => :'Boolean',
        :'tags' => :'Array<String>',
        :'name_first' => :'String',
        :'name_last' => :'String',
        :'birthdate' => :'Date',
        :'social_security_number' => :'String',
        :'social_security_number_last_4' => :'String',
        :'address_street_1' => :'String',
        :'address_street_2' => :'String',
        :'address_city' => :'String',
        :'address_subdivision' => :'String',
        :'address_subdivision_abbr' => :'String',
        :'address_postal_code' => :'String',
        :'address_postal_code_abbr' => :'String',
        :'phone_number' => :'String',
        :'identity_records' => :'Array<ReportProfileAttributesAllOfIdentityRecordsInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ReportSharedAttributes'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ReportProfileAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ReportProfileAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'completed_at')
        self.completed_at = attributes[:'completed_at']
      end

      if attributes.key?(:'redacted_at')
        self.redacted_at = attributes[:'redacted_at']
      end

      if attributes.key?(:'report_template_version_name')
        self.report_template_version_name = attributes[:'report_template_version_name']
      end

      if attributes.key?(:'has_match')
        self.has_match = attributes[:'has_match']
      end

      if attributes.key?(:'is_continuous')
        self.is_continuous = attributes[:'is_continuous']
      end

      if attributes.key?(:'is_recurring')
        self.is_recurring = attributes[:'is_recurring']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'name_first')
        self.name_first = attributes[:'name_first']
      end

      if attributes.key?(:'name_last')
        self.name_last = attributes[:'name_last']
      end

      if attributes.key?(:'birthdate')
        self.birthdate = attributes[:'birthdate']
      end

      if attributes.key?(:'social_security_number')
        self.social_security_number = attributes[:'social_security_number']
      end

      if attributes.key?(:'social_security_number_last_4')
        self.social_security_number_last_4 = attributes[:'social_security_number_last_4']
      end

      if attributes.key?(:'address_street_1')
        self.address_street_1 = attributes[:'address_street_1']
      end

      if attributes.key?(:'address_street_2')
        self.address_street_2 = attributes[:'address_street_2']
      end

      if attributes.key?(:'address_city')
        self.address_city = attributes[:'address_city']
      end

      if attributes.key?(:'address_subdivision')
        self.address_subdivision = attributes[:'address_subdivision']
      end

      if attributes.key?(:'address_subdivision_abbr')
        self.address_subdivision_abbr = attributes[:'address_subdivision_abbr']
      end

      if attributes.key?(:'address_postal_code')
        self.address_postal_code = attributes[:'address_postal_code']
      end

      if attributes.key?(:'address_postal_code_abbr')
        self.address_postal_code_abbr = attributes[:'address_postal_code_abbr']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'identity_records')
        if (value = attributes[:'identity_records']).is_a?(Array)
          self.identity_records = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          created_at == o.created_at &&
          completed_at == o.completed_at &&
          redacted_at == o.redacted_at &&
          report_template_version_name == o.report_template_version_name &&
          has_match == o.has_match &&
          is_continuous == o.is_continuous &&
          is_recurring == o.is_recurring &&
          tags == o.tags &&
          name_first == o.name_first &&
          name_last == o.name_last &&
          birthdate == o.birthdate &&
          social_security_number == o.social_security_number &&
          social_security_number_last_4 == o.social_security_number_last_4 &&
          address_street_1 == o.address_street_1 &&
          address_street_2 == o.address_street_2 &&
          address_city == o.address_city &&
          address_subdivision == o.address_subdivision &&
          address_subdivision_abbr == o.address_subdivision_abbr &&
          address_postal_code == o.address_postal_code &&
          address_postal_code_abbr == o.address_postal_code_abbr &&
          phone_number == o.phone_number &&
          identity_records == o.identity_records
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, created_at, completed_at, redacted_at, report_template_version_name, has_match, is_continuous, is_recurring, tags, name_first, name_last, birthdate, social_security_number, social_security_number_last_4, address_street_1, address_street_2, address_city, address_subdivision, address_subdivision_abbr, address_postal_code, address_postal_code_abbr, phone_number, identity_records].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end