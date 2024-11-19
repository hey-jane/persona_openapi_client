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

module PersonaAPIClient
  class ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatch
    # The entity ID of the match.
    attr_accessor :entity_id

    # The name of the match.
    attr_accessor :name

    # The birthdates associated with the match.
    attr_accessor :birthdates

    # The death dates associated with the match, if applicable.
    attr_accessor :death_dates

    # The locations associated with the match.
    attr_accessor :locations

    # The country associated with the match.
    attr_accessor :country

    # The sex of the individual in the match.
    attr_accessor :sex

    attr_accessor :positions

    attr_accessor :associates

    attr_accessor :affiliations

    attr_accessor :related_urls

    # The URLs of images associated with the match.
    attr_accessor :images

    attr_accessor :sources

    # The types of matches found.
    attr_accessor :match_types

    # The type of politically exposed person.
    attr_accessor :pep_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entity_id' => :'entity-id',
        :'name' => :'name',
        :'birthdates' => :'birthdates',
        :'death_dates' => :'death-dates',
        :'locations' => :'locations',
        :'country' => :'country',
        :'sex' => :'sex',
        :'positions' => :'positions',
        :'associates' => :'associates',
        :'affiliations' => :'affiliations',
        :'related_urls' => :'related-urls',
        :'images' => :'images',
        :'sources' => :'sources',
        :'match_types' => :'match-types',
        :'pep_type' => :'pep-type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'entity_id' => :'String',
        :'name' => :'String',
        :'birthdates' => :'Array<Date>',
        :'death_dates' => :'Array<Date>',
        :'locations' => :'Array<String>',
        :'country' => :'String',
        :'sex' => :'String',
        :'positions' => :'Array<ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatchPositionsInner>',
        :'associates' => :'Array<ReportPoliticallyExposedPersonAttributesAllOfResultInnerAssociatesInner>',
        :'affiliations' => :'Array<ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatchAffiliationsInner>',
        :'related_urls' => :'Array<ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatchRelatedUrlsInner>',
        :'images' => :'Array<String>',
        :'sources' => :'ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatchSources',
        :'match_types' => :'Array<String>',
        :'pep_type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PersonaAPIClient::ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatch` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PersonaAPIClient::ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatch`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entity_id')
        self.entity_id = attributes[:'entity_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'birthdates')
        if (value = attributes[:'birthdates']).is_a?(Array)
          self.birthdates = value
        end
      end

      if attributes.key?(:'death_dates')
        if (value = attributes[:'death_dates']).is_a?(Array)
          self.death_dates = value
        end
      end

      if attributes.key?(:'locations')
        if (value = attributes[:'locations']).is_a?(Array)
          self.locations = value
        end
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'sex')
        self.sex = attributes[:'sex']
      end

      if attributes.key?(:'positions')
        if (value = attributes[:'positions']).is_a?(Array)
          self.positions = value
        end
      end

      if attributes.key?(:'associates')
        if (value = attributes[:'associates']).is_a?(Array)
          self.associates = value
        end
      end

      if attributes.key?(:'affiliations')
        if (value = attributes[:'affiliations']).is_a?(Array)
          self.affiliations = value
        end
      end

      if attributes.key?(:'related_urls')
        if (value = attributes[:'related_urls']).is_a?(Array)
          self.related_urls = value
        end
      end

      if attributes.key?(:'images')
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
      end

      if attributes.key?(:'sources')
        self.sources = attributes[:'sources']
      end

      if attributes.key?(:'match_types')
        if (value = attributes[:'match_types']).is_a?(Array)
          self.match_types = value
        end
      end

      if attributes.key?(:'pep_type')
        self.pep_type = attributes[:'pep_type']
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
          entity_id == o.entity_id &&
          name == o.name &&
          birthdates == o.birthdates &&
          death_dates == o.death_dates &&
          locations == o.locations &&
          country == o.country &&
          sex == o.sex &&
          positions == o.positions &&
          associates == o.associates &&
          affiliations == o.affiliations &&
          related_urls == o.related_urls &&
          images == o.images &&
          sources == o.sources &&
          match_types == o.match_types &&
          pep_type == o.pep_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entity_id, name, birthdates, death_dates, locations, country, sex, positions, associates, affiliations, related_urls, images, sources, match_types, pep_type].hash
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