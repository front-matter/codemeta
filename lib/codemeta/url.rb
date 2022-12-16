# frozen_string_literal: true

module Codemeta
  # Model Schema.org `DataType > Text > URL`.
  # @See https://schema.org/URL
  class URL
    # @dynamic url

    attr_reader :type

    # URL of the item.
    attr_accessor :url

    def initialize(args = {})
      @type = 'URL'
      @url = args[:url]
    end

    def to_json_struct
      {
        'url' => url
      }
    end
  end
end
