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
  class ReportProfileNonAuthoritativeAttributesAllOfQuery
    # The input first name of the search individual
    attr_accessor :name_first

    # The input middle name of the search individual
    attr_accessor :name_middle

    # The input last name of the search individual
    attr_accessor :name_last

    # The locality of the search individual
    attr_accessor :address_city

    # The subdivision of the search individual
    attr_accessor :address_subdivision

    # The postal code of the search individual
    attr_accessor :address_postal_code

    # The street address of the search individual
    attr_accessor :address_street_1

    # The address line 2 of the search individual
    attr_accessor :address_street_2

    # The country code of the search individual
    attr_accessor :address_country_code

    # The email address of the search individual
    attr_accessor :email_address

    # The phone number of the search individual
    attr_accessor :phone_number

    # Date of birth in YYYY-MM-DD format
    attr_accessor :birthdate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name_first' => :'name-first',
        :'name_middle' => :'name-middle',
        :'name_last' => :'name-last',
        :'address_city' => :'address-city',
        :'address_subdivision' => :'address-subdivision',
        :'address_postal_code' => :'address-postal-code',
        :'address_street_1' => :'address-street-1',
        :'address_street_2' => :'address-street-2',
        :'address_country_code' => :'address-country-code',
        :'email_address' => :'email-address',
        :'phone_number' => :'phone-number',
        :'birthdate' => :'birthdate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name_first' => :'String',
        :'name_middle' => :'String',
        :'name_last' => :'String',
        :'address_city' => :'String',
        :'address_subdivision' => :'String',
        :'address_postal_code' => :'String',
        :'address_street_1' => :'String',
        :'address_street_2' => :'String',
        :'address_country_code' => :'String',
        :'email_address' => :'String',
        :'phone_number' => :'String',
        :'birthdate' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ReportProfileNonAuthoritativeAttributesAllOfQuery` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ReportProfileNonAuthoritativeAttributesAllOfQuery`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name_first')
        self.name_first = attributes[:'name_first']
      end

      if attributes.key?(:'name_middle')
        self.name_middle = attributes[:'name_middle']
      end

      if attributes.key?(:'name_last')
        self.name_last = attributes[:'name_last']
      end

      if attributes.key?(:'address_city')
        self.address_city = attributes[:'address_city']
      end

      if attributes.key?(:'address_subdivision')
        self.address_subdivision = attributes[:'address_subdivision']
      end

      if attributes.key?(:'address_postal_code')
        self.address_postal_code = attributes[:'address_postal_code']
      end

      if attributes.key?(:'address_street_1')
        self.address_street_1 = attributes[:'address_street_1']
      end

      if attributes.key?(:'address_street_2')
        self.address_street_2 = attributes[:'address_street_2']
      end

      if attributes.key?(:'address_country_code')
        self.address_country_code = attributes[:'address_country_code']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'birthdate')
        self.birthdate = attributes[:'birthdate']
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
          name_first == o.name_first &&
          name_middle == o.name_middle &&
          name_last == o.name_last &&
          address_city == o.address_city &&
          address_subdivision == o.address_subdivision &&
          address_postal_code == o.address_postal_code &&
          address_street_1 == o.address_street_1 &&
          address_street_2 == o.address_street_2 &&
          address_country_code == o.address_country_code &&
          email_address == o.email_address &&
          phone_number == o.phone_number &&
          birthdate == o.birthdate
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name_first, name_middle, name_last, address_city, address_subdivision, address_postal_code, address_street_1, address_street_2, address_country_code, email_address, phone_number, birthdate].hash
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