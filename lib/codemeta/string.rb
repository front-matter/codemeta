# frozen_string_literal: true

class String
  # adapted from ActiveSupport::Inflector
  def underscore
    return self unless /[A-Z-]|::/.match?(self)

    acronym_regex = /[A-Z\d]+(?=[A-Z][a-z\d])|[A-Z\d]+(?=[A-Z\d][^A-Z\d])|[A-Z\d]+/
    acronyms_underscore_regex = /(?:(?<=([A-Za-z\d]))|\b)(#{acronym_regex})(?=\b|[^a-z])/
    
    word = self.to_s.gsub("::".freeze, "/".freeze)
    word.gsub!(acronyms_underscore_regex) { "#{$1 && '_'.freeze }#{$2.downcase}" }
    word.gsub!(/([A-Z\d]+)([A-Z][a-z])/, '\1_\2'.freeze)
    word.gsub!(/([a-z\d])([A-Z])/, '\1_\2'.freeze)
    word.tr!("-".freeze, "_".freeze)
    word.downcase!
    word
  end
end
