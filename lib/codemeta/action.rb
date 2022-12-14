# typed: ignore
# frozen_string_literal: true

module Codemeta
  # Model Schema.org `Thing > Action`.
  # See http://schema.org/Action
  class Action < SchemaDotOrg::SchemaType
    attr_accessor :action_status, :agent, :end_time, :error, :instrument,
                  :location, :object, :participant, :result, :start_time,
                  :target
  end
end
