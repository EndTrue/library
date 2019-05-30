module Validator
    def self.validate(object:, expected_class:)
        raise WrongClassError unless object.instance_of? expected_class
    end

    class WrongClassError < StandardError
        def initialize
          super('Argument object is not instance of expected class')
        end
      end
endbun