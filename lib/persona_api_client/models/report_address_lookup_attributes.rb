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
  class ReportAddressLookupAttributes
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

    # The name of an individual at this location.
    attr_accessor :addressee

    # Address line 1 (e.g., street, PO Box, or company name).
    attr_accessor :address_street_1

    # Address line 2 (e.g., apartment, suite, unit, or building).
    attr_accessor :address_street_2

    # City
    attr_accessor :address_city

    # Subnational division of a country, such as a state or province.
    attr_accessor :address_subdivision

    # ZIP or postal code.
    attr_accessor :address_postal_code

    attr_accessor :resolved_addressee

    attr_accessor :resolved_address_street_1

    attr_accessor :resolved_address_street_2

    attr_accessor :resolved_address_city

    attr_accessor :resolved_address_subdivision

    attr_accessor :resolved_address_postal_code

    attr_accessor :metadata_record_type

    attr_accessor :metadata_zip_type

    attr_accessor :metadata_county_fips

    attr_accessor :metadata_county_name

    attr_accessor :metadata_carrier_route

    attr_accessor :metadata_carrier_route_type

    attr_accessor :metadata_congressional_district

    attr_accessor :metadata_building_default_indicator

    attr_accessor :metadata_residential_delivery_indicator

    attr_accessor :metadata_latitude

    attr_accessor :metadata_longitude

    attr_accessor :metadata_precision

    attr_accessor :metadata_time_zone

    attr_accessor :metadata_utc_offset

    attr_accessor :metadata_obeys_daylight_savings

    attr_accessor :analysis_dpv_match_code

    attr_accessor :analysis_dpv_match_code_decoded

    attr_accessor :analysis_dpv_footnotes

    attr_accessor :analysis_dpv_footnotes_decoded

    attr_accessor :analysis_dpv_cmra

    attr_accessor :analysis_dpv_vacant

    attr_accessor :analysis_active

    attr_accessor :analysis_footnotes

    attr_accessor :analysis_footnotes_decoded

    attr_accessor :analysis_lacs_link_code

    attr_accessor :analysis_lacs_link_code_decoded

    attr_accessor :analysis_lacs_link_indicator

    attr_accessor :analysis_lacs_link_indicator_decoded

    attr_accessor :analysis_suite_link_match

    attr_accessor :metadata_ews_match

    attr_accessor :error_message

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
        :'addressee' => :'addressee',
        :'address_street_1' => :'address-street-1',
        :'address_street_2' => :'address-street-2',
        :'address_city' => :'address-city',
        :'address_subdivision' => :'address-subdivision',
        :'address_postal_code' => :'address-postal-code',
        :'resolved_addressee' => :'resolved-addressee',
        :'resolved_address_street_1' => :'resolved-address-street-1',
        :'resolved_address_street_2' => :'resolved-address-street-2',
        :'resolved_address_city' => :'resolved-address-city',
        :'resolved_address_subdivision' => :'resolved-address-subdivision',
        :'resolved_address_postal_code' => :'resolved-address-postal-code',
        :'metadata_record_type' => :'metadata-record-type',
        :'metadata_zip_type' => :'metadata-zip-type',
        :'metadata_county_fips' => :'metadata-county-fips',
        :'metadata_county_name' => :'metadata-county-name',
        :'metadata_carrier_route' => :'metadata-carrier-route',
        :'metadata_carrier_route_type' => :'metadata-carrier-route-type',
        :'metadata_congressional_district' => :'metadata-congressional-district',
        :'metadata_building_default_indicator' => :'metadata-building-default-indicator',
        :'metadata_residential_delivery_indicator' => :'metadata-residential-delivery-indicator',
        :'metadata_latitude' => :'metadata-latitude',
        :'metadata_longitude' => :'metadata-longitude',
        :'metadata_precision' => :'metadata-precision',
        :'metadata_time_zone' => :'metadata-time-zone',
        :'metadata_utc_offset' => :'metadata-utc-offset',
        :'metadata_obeys_daylight_savings' => :'metadata-obeys-daylight-savings',
        :'analysis_dpv_match_code' => :'analysis-dpv-match-code',
        :'analysis_dpv_match_code_decoded' => :'analysis-dpv-match-code-decoded',
        :'analysis_dpv_footnotes' => :'analysis-dpv-footnotes',
        :'analysis_dpv_footnotes_decoded' => :'analysis-dpv-footnotes-decoded',
        :'analysis_dpv_cmra' => :'analysis-dpv-cmra',
        :'analysis_dpv_vacant' => :'analysis-dpv-vacant',
        :'analysis_active' => :'analysis-active',
        :'analysis_footnotes' => :'analysis-footnotes',
        :'analysis_footnotes_decoded' => :'analysis-footnotes-decoded',
        :'analysis_lacs_link_code' => :'analysis-lacs-link-code',
        :'analysis_lacs_link_code_decoded' => :'analysis-lacs-link-code-decoded',
        :'analysis_lacs_link_indicator' => :'analysis-lacs-link-indicator',
        :'analysis_lacs_link_indicator_decoded' => :'analysis-lacs-link-indicator-decoded',
        :'analysis_suite_link_match' => :'analysis-suite-link-match',
        :'metadata_ews_match' => :'metadata-ews-match',
        :'error_message' => :'error-message'
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
        :'addressee' => :'String',
        :'address_street_1' => :'String',
        :'address_street_2' => :'String',
        :'address_city' => :'String',
        :'address_subdivision' => :'String',
        :'address_postal_code' => :'String',
        :'resolved_addressee' => :'String',
        :'resolved_address_street_1' => :'String',
        :'resolved_address_street_2' => :'String',
        :'resolved_address_city' => :'String',
        :'resolved_address_subdivision' => :'String',
        :'resolved_address_postal_code' => :'String',
        :'metadata_record_type' => :'String',
        :'metadata_zip_type' => :'String',
        :'metadata_county_fips' => :'String',
        :'metadata_county_name' => :'String',
        :'metadata_carrier_route' => :'String',
        :'metadata_carrier_route_type' => :'String',
        :'metadata_congressional_district' => :'String',
        :'metadata_building_default_indicator' => :'String',
        :'metadata_residential_delivery_indicator' => :'String',
        :'metadata_latitude' => :'Float',
        :'metadata_longitude' => :'Float',
        :'metadata_precision' => :'String',
        :'metadata_time_zone' => :'String',
        :'metadata_utc_offset' => :'Integer',
        :'metadata_obeys_daylight_savings' => :'Boolean',
        :'analysis_dpv_match_code' => :'String',
        :'analysis_dpv_match_code_decoded' => :'String',
        :'analysis_dpv_footnotes' => :'Array<String>',
        :'analysis_dpv_footnotes_decoded' => :'Array<String>',
        :'analysis_dpv_cmra' => :'String',
        :'analysis_dpv_vacant' => :'String',
        :'analysis_active' => :'String',
        :'analysis_footnotes' => :'Array<String>',
        :'analysis_footnotes_decoded' => :'Array<String>',
        :'analysis_lacs_link_code' => :'String',
        :'analysis_lacs_link_code_decoded' => :'String',
        :'analysis_lacs_link_indicator' => :'String',
        :'analysis_lacs_link_indicator_decoded' => :'String',
        :'analysis_suite_link_match' => :'String',
        :'metadata_ews_match' => :'String',
        :'error_message' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PersonaAPIClient::ReportAddressLookupAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PersonaAPIClient::ReportAddressLookupAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'addressee')
        self.addressee = attributes[:'addressee']
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

      if attributes.key?(:'address_postal_code')
        self.address_postal_code = attributes[:'address_postal_code']
      end

      if attributes.key?(:'resolved_addressee')
        self.resolved_addressee = attributes[:'resolved_addressee']
      end

      if attributes.key?(:'resolved_address_street_1')
        self.resolved_address_street_1 = attributes[:'resolved_address_street_1']
      end

      if attributes.key?(:'resolved_address_street_2')
        self.resolved_address_street_2 = attributes[:'resolved_address_street_2']
      end

      if attributes.key?(:'resolved_address_city')
        self.resolved_address_city = attributes[:'resolved_address_city']
      end

      if attributes.key?(:'resolved_address_subdivision')
        self.resolved_address_subdivision = attributes[:'resolved_address_subdivision']
      end

      if attributes.key?(:'resolved_address_postal_code')
        self.resolved_address_postal_code = attributes[:'resolved_address_postal_code']
      end

      if attributes.key?(:'metadata_record_type')
        self.metadata_record_type = attributes[:'metadata_record_type']
      end

      if attributes.key?(:'metadata_zip_type')
        self.metadata_zip_type = attributes[:'metadata_zip_type']
      end

      if attributes.key?(:'metadata_county_fips')
        self.metadata_county_fips = attributes[:'metadata_county_fips']
      end

      if attributes.key?(:'metadata_county_name')
        self.metadata_county_name = attributes[:'metadata_county_name']
      end

      if attributes.key?(:'metadata_carrier_route')
        self.metadata_carrier_route = attributes[:'metadata_carrier_route']
      end

      if attributes.key?(:'metadata_carrier_route_type')
        self.metadata_carrier_route_type = attributes[:'metadata_carrier_route_type']
      end

      if attributes.key?(:'metadata_congressional_district')
        self.metadata_congressional_district = attributes[:'metadata_congressional_district']
      end

      if attributes.key?(:'metadata_building_default_indicator')
        self.metadata_building_default_indicator = attributes[:'metadata_building_default_indicator']
      end

      if attributes.key?(:'metadata_residential_delivery_indicator')
        self.metadata_residential_delivery_indicator = attributes[:'metadata_residential_delivery_indicator']
      end

      if attributes.key?(:'metadata_latitude')
        self.metadata_latitude = attributes[:'metadata_latitude']
      end

      if attributes.key?(:'metadata_longitude')
        self.metadata_longitude = attributes[:'metadata_longitude']
      end

      if attributes.key?(:'metadata_precision')
        self.metadata_precision = attributes[:'metadata_precision']
      end

      if attributes.key?(:'metadata_time_zone')
        self.metadata_time_zone = attributes[:'metadata_time_zone']
      end

      if attributes.key?(:'metadata_utc_offset')
        self.metadata_utc_offset = attributes[:'metadata_utc_offset']
      end

      if attributes.key?(:'metadata_obeys_daylight_savings')
        self.metadata_obeys_daylight_savings = attributes[:'metadata_obeys_daylight_savings']
      end

      if attributes.key?(:'analysis_dpv_match_code')
        self.analysis_dpv_match_code = attributes[:'analysis_dpv_match_code']
      end

      if attributes.key?(:'analysis_dpv_match_code_decoded')
        self.analysis_dpv_match_code_decoded = attributes[:'analysis_dpv_match_code_decoded']
      end

      if attributes.key?(:'analysis_dpv_footnotes')
        if (value = attributes[:'analysis_dpv_footnotes']).is_a?(Array)
          self.analysis_dpv_footnotes = value
        end
      end

      if attributes.key?(:'analysis_dpv_footnotes_decoded')
        if (value = attributes[:'analysis_dpv_footnotes_decoded']).is_a?(Array)
          self.analysis_dpv_footnotes_decoded = value
        end
      end

      if attributes.key?(:'analysis_dpv_cmra')
        self.analysis_dpv_cmra = attributes[:'analysis_dpv_cmra']
      end

      if attributes.key?(:'analysis_dpv_vacant')
        self.analysis_dpv_vacant = attributes[:'analysis_dpv_vacant']
      end

      if attributes.key?(:'analysis_active')
        self.analysis_active = attributes[:'analysis_active']
      end

      if attributes.key?(:'analysis_footnotes')
        if (value = attributes[:'analysis_footnotes']).is_a?(Array)
          self.analysis_footnotes = value
        end
      end

      if attributes.key?(:'analysis_footnotes_decoded')
        if (value = attributes[:'analysis_footnotes_decoded']).is_a?(Array)
          self.analysis_footnotes_decoded = value
        end
      end

      if attributes.key?(:'analysis_lacs_link_code')
        self.analysis_lacs_link_code = attributes[:'analysis_lacs_link_code']
      end

      if attributes.key?(:'analysis_lacs_link_code_decoded')
        self.analysis_lacs_link_code_decoded = attributes[:'analysis_lacs_link_code_decoded']
      end

      if attributes.key?(:'analysis_lacs_link_indicator')
        self.analysis_lacs_link_indicator = attributes[:'analysis_lacs_link_indicator']
      end

      if attributes.key?(:'analysis_lacs_link_indicator_decoded')
        self.analysis_lacs_link_indicator_decoded = attributes[:'analysis_lacs_link_indicator_decoded']
      end

      if attributes.key?(:'analysis_suite_link_match')
        self.analysis_suite_link_match = attributes[:'analysis_suite_link_match']
      end

      if attributes.key?(:'metadata_ews_match')
        self.metadata_ews_match = attributes[:'metadata_ews_match']
      end

      if attributes.key?(:'error_message')
        self.error_message = attributes[:'error_message']
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
          addressee == o.addressee &&
          address_street_1 == o.address_street_1 &&
          address_street_2 == o.address_street_2 &&
          address_city == o.address_city &&
          address_subdivision == o.address_subdivision &&
          address_postal_code == o.address_postal_code &&
          resolved_addressee == o.resolved_addressee &&
          resolved_address_street_1 == o.resolved_address_street_1 &&
          resolved_address_street_2 == o.resolved_address_street_2 &&
          resolved_address_city == o.resolved_address_city &&
          resolved_address_subdivision == o.resolved_address_subdivision &&
          resolved_address_postal_code == o.resolved_address_postal_code &&
          metadata_record_type == o.metadata_record_type &&
          metadata_zip_type == o.metadata_zip_type &&
          metadata_county_fips == o.metadata_county_fips &&
          metadata_county_name == o.metadata_county_name &&
          metadata_carrier_route == o.metadata_carrier_route &&
          metadata_carrier_route_type == o.metadata_carrier_route_type &&
          metadata_congressional_district == o.metadata_congressional_district &&
          metadata_building_default_indicator == o.metadata_building_default_indicator &&
          metadata_residential_delivery_indicator == o.metadata_residential_delivery_indicator &&
          metadata_latitude == o.metadata_latitude &&
          metadata_longitude == o.metadata_longitude &&
          metadata_precision == o.metadata_precision &&
          metadata_time_zone == o.metadata_time_zone &&
          metadata_utc_offset == o.metadata_utc_offset &&
          metadata_obeys_daylight_savings == o.metadata_obeys_daylight_savings &&
          analysis_dpv_match_code == o.analysis_dpv_match_code &&
          analysis_dpv_match_code_decoded == o.analysis_dpv_match_code_decoded &&
          analysis_dpv_footnotes == o.analysis_dpv_footnotes &&
          analysis_dpv_footnotes_decoded == o.analysis_dpv_footnotes_decoded &&
          analysis_dpv_cmra == o.analysis_dpv_cmra &&
          analysis_dpv_vacant == o.analysis_dpv_vacant &&
          analysis_active == o.analysis_active &&
          analysis_footnotes == o.analysis_footnotes &&
          analysis_footnotes_decoded == o.analysis_footnotes_decoded &&
          analysis_lacs_link_code == o.analysis_lacs_link_code &&
          analysis_lacs_link_code_decoded == o.analysis_lacs_link_code_decoded &&
          analysis_lacs_link_indicator == o.analysis_lacs_link_indicator &&
          analysis_lacs_link_indicator_decoded == o.analysis_lacs_link_indicator_decoded &&
          analysis_suite_link_match == o.analysis_suite_link_match &&
          metadata_ews_match == o.metadata_ews_match &&
          error_message == o.error_message
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, created_at, completed_at, redacted_at, report_template_version_name, has_match, is_continuous, is_recurring, tags, addressee, address_street_1, address_street_2, address_city, address_subdivision, address_postal_code, resolved_addressee, resolved_address_street_1, resolved_address_street_2, resolved_address_city, resolved_address_subdivision, resolved_address_postal_code, metadata_record_type, metadata_zip_type, metadata_county_fips, metadata_county_name, metadata_carrier_route, metadata_carrier_route_type, metadata_congressional_district, metadata_building_default_indicator, metadata_residential_delivery_indicator, metadata_latitude, metadata_longitude, metadata_precision, metadata_time_zone, metadata_utc_offset, metadata_obeys_daylight_savings, analysis_dpv_match_code, analysis_dpv_match_code_decoded, analysis_dpv_footnotes, analysis_dpv_footnotes_decoded, analysis_dpv_cmra, analysis_dpv_vacant, analysis_active, analysis_footnotes, analysis_footnotes_decoded, analysis_lacs_link_code, analysis_lacs_link_code_decoded, analysis_lacs_link_indicator, analysis_lacs_link_indicator_decoded, analysis_suite_link_match, metadata_ews_match, error_message].hash
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
