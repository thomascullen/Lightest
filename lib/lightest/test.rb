module Lightest
  class Test
    attr_accessor :name
    attr_accessor :failure
    alias failure? :failure

    def initialize(name)
      self.name = name
      self.failure = false
    end

    def self.inherited(test)
      Lightest::TESTS << test
    end

    def self.run(reporter)
      test_names.shuffle.each do |name|
        result = self.new(name).run
        reporter << result
      end
    end

    def self.test_names
      public_instance_methods.grep(/_test$/)
    end

    def run
      send(name)
    rescue => e
      self.failure = e
    ensure
      return self
    end

    def assert(expression, message = "Test Failed")
      raise RuntimeError, message, caller unless expression
    end
  end
end
