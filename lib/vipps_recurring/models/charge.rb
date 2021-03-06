=begin
#Recurring Payments Merchant API

## Recurring payments Recurring payments is used for subscription payments such as weekly dues for newspaper access, monthly dues for public transportation, etc. 1. A draft agreement is initialized and the user is redirected for approval. 2. The user approves the agreement and the merchant can call GET on the agreement to verify the status. 3. The merchant can start sending charges which will be charged the user in the future. The merchant is responsible for checking the status of charges, and cancelling any user access if charges are failing (or contacting the user). ## Authentication See <a href=\"#/Access%20Controller/getAccessToken\" target=\"_blank\">Get Access Token</a> For information regarding authentication please read [our guide](https://github.com/vippsas/vipps-recurring-api/blob/master/vipps-recurring-api.md#authentication-and-authorization---api-access-token)

The version of the OpenAPI document: 2.1.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module VippsRecurring
  class Charge
    # Treated as a whole sum postfixed with two decimals for cents, eg 234 = 2.34 NOK
    attr_accessor :amount

    # The total amount which has been refunded, in case of status refund/partial refund. Treated as a whole sum postfixed with two decimals for cents, eg 234 = 2.34 NOK
    attr_accessor :amount_refunded

    # Description of the charge
    attr_accessor :description

    # The due date for this charge
    attr_accessor :due

    # Identifier for this charge (for this customer's subscription).
    attr_accessor :id

    attr_accessor :status

    # Contains null until the status has reached CHARGED
    attr_accessor :transaction_id

    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'amount_refunded' => :'amountRefunded',
        :'description' => :'description',
        :'due' => :'due',
        :'id' => :'id',
        :'status' => :'status',
        :'transaction_id' => :'transactionId',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Integer',
        :'amount_refunded' => :'Integer',
        :'description' => :'String',
        :'due' => :'Time',
        :'id' => :'String',
        :'status' => :'ChargeStatus',
        :'transaction_id' => :'String',
        :'type' => :'ChargeType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `VippsRecurring::Charge` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VippsRecurring::Charge`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'amount_refunded')
        self.amount_refunded = attributes[:'amount_refunded']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'due')
        self.due = attributes[:'due']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = 'NOT_SET'
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'PENDING'
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'RECURRING'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @amount_refunded.nil?
        invalid_properties.push('invalid value for "amount_refunded", amount_refunded cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @due.nil?
        invalid_properties.push('invalid value for "due", due cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 15
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 15.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @transaction_id.nil?
        invalid_properties.push('invalid value for "transaction_id", transaction_id cannot be nil.')
      end

      if @transaction_id.to_s.length > 36
        invalid_properties.push('invalid value for "transaction_id", the character length must be smaller than or equal to 36.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      return false if @amount_refunded.nil?
      return false if @description.nil?
      return false if @due.nil?
      return false if @id.nil?
      return false if @id.to_s.length > 15
      return false if @status.nil?
      return false if @transaction_id.nil?
      return false if @transaction_id.to_s.length > 36
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 15
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 15.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      if transaction_id.nil?
        fail ArgumentError, 'transaction_id cannot be nil'
      end

      if transaction_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "transaction_id", the character length must be smaller than or equal to 36.'
      end

      @transaction_id = transaction_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          amount_refunded == o.amount_refunded &&
          description == o.description &&
          due == o.due &&
          id == o.id &&
          status == o.status &&
          transaction_id == o.transaction_id &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, amount_refunded, description, due, id, status, transaction_id, type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass = VippsRecurring.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
