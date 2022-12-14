# typed: ignore
# frozen_string_literal: true

module Codemeta
  # Model Schema.org `DataType > Text > URL`.
  # @See https://schema.org/URL
  class URL < SchemaDotOrg::SchemaType
    attr_accessor :url

    # URL of the item.
    validates :url, type: Codemeta::Thing, presence: true

    def _to_json_struct
      {
        'url' => url.to_json_struct
      }
    end
  end
end
