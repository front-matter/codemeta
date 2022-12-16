# frozen_string_literal: true

require_relative 'utils'

module Codemeta
  # Model Schema.org `Thing > Person`.
  # @See https://schema.org/Person

  # rubocop:disable Metrics/ClassLength
  class Person
    include Codemeta::Utils

    # Properties from Person

    # An additional name for a Person, can be used for a middle name.
    attr_accessor :additional_name

    # An organization that this person is affiliated with. For example,
    # a school/university, a club, or a team.
    attr_accessor :affiliation

    # Family name. In the U.S., the last name of a Person.
    attr_accessor :family_name

    # Given name. In the U.S., the first name of a Person.
    attr_accessor :given_name

    # Properties from Thing

    # The name of the item.
    attr_accessor :name
  end
end
