# frozen_string_literal: true
require 'uri'

module Codemeta
  module Utils
    def read_json_file(input)
      if input && File.exist?(input) && %w[.json].include?(File.extname(input))
        string = File.read(input)
        JSON.parse(string).transform_keys { |k| k.to_s.underscore }
      else
        {}
      end
    end

    def normalize_id(id, options = {})
      return nil unless id.present?

      # check for valid HTTP uri
      uri = URI.parse(id)
      return nil unless uri && uri.host && %w[http https].include?(uri.scheme)

      # turn into https URL
      uri.scheme = 'https' if uri.scheme == 'http' && options[:https]

      # remove trailing slash
      uri.path = uri.path.chomp('/') if uri.path.end_with?('/')
      
      # turn url into lowercase
      uri.to_s.downcase
    rescue URI::InvalidURIError
      nil
    end
  end
end
