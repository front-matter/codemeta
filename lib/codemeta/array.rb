# frozen_string_literal: true

class Array

  # adapted from ActiveSupport::CoreExtensions::Array::Conversions
  def self.wrap(object)
    if object.nil?
      []
    elsif object.respond_to?(:to_ary)
      object.to_ary || [object]
    else
      [object]
    end
  end
end
