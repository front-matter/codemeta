# frozen_string_literal: true

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
  end
end
