# frozen_string_literal: true

module Codemeta
  module Utils
    def read_input(input)
      if input && File.exist?(input) && %w[.json].include?(File.extname(input))
        string = File.read(input)
        JSON.parse(string).transform_keys { |k| k.underscore.to_sym }
      else
        {}
      end
    end
  end
end
