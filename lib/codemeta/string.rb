# frozen_string_literal: true

class String
  # adapted from ActiveSupport::Inflector
  def underscore
    return self unless /[A-Z-]|::/.match?(self)

    acronym_regex = /[A-Z\d]+(?=[A-Z][a-z\d])|[A-Z\d]+(?=[A-Z\d][^A-Z\d])|[A-Z\d]+/
    acronyms_underscore_regex = /(?:(?<=([A-Za-z\d]))|\b)(#{acronym_regex})(?=\b|[^a-z])/

    word = to_s.gsub('::', '/')
    word.gsub!(acronyms_underscore_regex) do
      "#{::Regexp.last_match(1) && '_'}#{::Regexp.last_match(2).downcase}"
    end
    word.gsub!(/([A-Z\d]+)([A-Z][a-z])/, '\1_\2')
    word.gsub!(/([a-z\d])([A-Z])/, '\1_\2')
    word.tr!('-', '_')
    word.downcase!
    word
  end
end
