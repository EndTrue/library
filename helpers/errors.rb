# frozen_string_literal: true

class WrongClassError < StandardError
  def initialize
    super('Object is not instance of expected class')
  end
end

class NotStringError < StandardError
  def initialize
    super('Argument is not a string')
  end
end

class EmptyStringError < StandardError
  def initialize
    super('Argument is empty string')
  end
end

class NotPositiveNumberError < StandardError
  def initialize
    super('Argument object must be positive number')
  end
end
