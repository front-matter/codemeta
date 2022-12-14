# typed: ignore
# frozen_string_literal: true

module Codemeta
  # Model the Schema.org `Thing`.
  # @See https://schema.org/Thing
  class Thing < SchemaDotOrg::SchemaType
    attr_accessor :name

    # Properties from Thing

    # The name of the item.
    validates :name, type: String, presence: true

    def _to_json_struct
      {
        'name' => name
      }
    end
  end
end
