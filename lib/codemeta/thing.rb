# frozen_string_literal: true

module Codemeta
  # Model Schema.org `Thing`.
  # @See https://schema.org/Thing
  class Thing
    # @dynamic name, url

    # Properties from Thing

    attr_reader :type

    # The name of the item.
    attr_accessor :name

    # URL of the item.
    attr_accessor :url

    def initialize(args = {})
      @type = 'Thing'
      @name = args[:name]
      @url = args[:url]
    end

    def to_json_struct
      { '@type' => type, 'name' => name, 'url' => url }.compact
    end
  end
end
