# frozen_string_literal: true

class String
  BLANK_RE = /\A[[:space:]]*\z/.freeze

  def blank?
    BLANK_RE.match?(self)
  end

  def presence
    self unless blank?
  end
end
