# typed: ignore
# frozen_string_literal: true

module Codemeta
  # Model Schema.org `Thing`.
  # @See https://schema.org/Thing
  class Thing < SchemaDotOrg::SchemaType
    attr_accessor :name, :url

    # Properties from Thing

    # The name of the item.
    validates :name, type: String, presence: true

    # URL of the item.
    validates :url, type: Codemeta::URL, presence: true

    def _to_json_struct
      {
        'name' => name,
        'url' => url.to_json_struct
      }
    end
  end
end
