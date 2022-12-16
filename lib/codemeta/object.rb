# frozen_string_literal: true

class Object
  # adapted from ActiveSupport::CoreExtensions::Object::Blank
  def presence
    self if present?
  end

  def present?
    !blank?
  end

  def blank?
    respond_to?(:empty?) ? !!empty? : !self
  end
end
