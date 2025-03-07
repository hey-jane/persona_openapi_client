=begin
#Persona API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-01-05
Contact: support@withpersona.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'date'
require 'time'

module PersonaAPIClient
  class ReportBusinessLookupAttributesAllOfResult
    attr_accessor :name

    attr_accessor :aliases

    attr_accessor :description

    attr_accessor :legal_status

    attr_accessor :legal_entity_type

    attr_accessor :date_of_incorporation

    attr_accessor :industry_classifications

    attr_accessor :identifiers

    attr_accessor :addresses

    attr_accessor :websites

    attr_accessor :phone_numbers

    attr_accessor :agents

    attr_accessor :officers

    attr_accessor :headcount

    attr_accessor :sources

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'aliases' => :'aliases',
        :'description' => :'description',
        :'legal_status' => :'legal-status',
        :'legal_entity_type' => :'legal-entity-type',
        :'date_of_incorporation' => :'date-of-incorporation',
        :'industry_classifications' => :'industry-classifications',
        :'identifiers' => :'identifiers',
        :'addresses' => :'addresses',
        :'websites' => :'websites',
        :'phone_numbers' => :'phone-numbers',
        :'agents' => :'agents',
        :'officers' => :'officers',
        :'headcount' => :'headcount',
        :'sources' => :'sources'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'aliases' => :'Array<String>',
        :'description' => :'String',
        :'legal_status' => :'String',
        :'legal_entity_type' => :'String',
        :'date_of_incorporation' => :'ReportBusinessLookupAttributesAllOfResultDateOfIncorporation',
        :'industry_classifications' => :'Array<ReportBusinessLookupAttributesAllOfResultIndustryClassificationsInner>',
        :'identifiers' => :'Array<ReportBusinessLookupAttributesAllOfResultIdentifiersInner>',
        :'addresses' => :'Array<ReportBusinessLookupAttributesAllOfResultAddressesInner>',
        :'websites' => :'Array<String>',
        :'phone_numbers' => :'Array<String>',
        :'agents' => :'Array<ReportBusinessLookupAttributesAllOfResultAgentsInner>',
        :'officers' => :'Array<ReportBusinessLookupAttributesAllOfResultOfficersInner>',
        :'headcount' => :'String',
        :'sources' => :'Array<ReportBusinessLookupAttributesAllOfResultSourcesInner>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PersonaAPIClient::ReportBusinessLookupAttributesAllOfResult` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PersonaAPIClient::ReportBusinessLookupAttributesAllOfResult`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'aliases')
        if (value = attributes[:'aliases']).is_a?(Array)
          self.aliases = value
        end
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'legal_status')
        self.legal_status = attributes[:'legal_status']
      end

      if attributes.key?(:'legal_entity_type')
        self.legal_entity_type = attributes[:'legal_entity_type']
      end

      if attributes.key?(:'date_of_incorporation')
        self.date_of_incorporation = attributes[:'date_of_incorporation']
      end

      if attributes.key?(:'industry_classifications')
        if (value = attributes[:'industry_classifications']).is_a?(Array)
          self.industry_classifications = value
        end
      end

      if attributes.key?(:'identifiers')
        if (value = attributes[:'identifiers']).is_a?(Array)
          self.identifiers = value
        end
      end

      if attributes.key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.key?(:'websites')
        if (value = attributes[:'websites']).is_a?(Array)
          self.websites = value
        end
      end

      if attributes.key?(:'phone_numbers')
        if (value = attributes[:'phone_numbers']).is_a?(Array)
          self.phone_numbers = value
        end
      end

      if attributes.key?(:'agents')
        if (value = attributes[:'agents']).is_a?(Array)
          self.agents = value
        end
      end

      if attributes.key?(:'officers')
        if (value = attributes[:'officers']).is_a?(Array)
          self.officers = value
        end
      end

      if attributes.key?(:'headcount')
        self.headcount = attributes[:'headcount']
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
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
          name == o.name &&
          aliases == o.aliases &&
          description == o.description &&
          legal_status == o.legal_status &&
          legal_entity_type == o.legal_entity_type &&
          date_of_incorporation == o.date_of_incorporation &&
          industry_classifications == o.industry_classifications &&
          identifiers == o.identifiers &&
          addresses == o.addresses &&
          websites == o.websites &&
          phone_numbers == o.phone_numbers &&
          agents == o.agents &&
          officers == o.officers &&
          headcount == o.headcount &&
          sources == o.sources
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, aliases, description, legal_status, legal_entity_type, date_of_incorporation, industry_classifications, identifiers, addresses, websites, phone_numbers, agents, officers, headcount, sources].hash
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
        klass = PersonaAPIClient.const_get(type)
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
