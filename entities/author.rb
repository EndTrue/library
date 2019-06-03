# frozen_string_literal: true

class Author
  attr_reader :name, :biography

  def initialize(name:, biography:)
    @name = name
    @biography = biography
  end

  def add_author(name, biography); end

  def to_s
    @name.to_s
  end
end
