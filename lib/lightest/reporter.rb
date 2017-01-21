module Lightest
  class Reporter
    attr_accessor :failures
    attr_accessor :pass_count
    attr_accessor :fail_count

    def initialize
      self.failures = []
      self.pass_count = 0
      self.fail_count = 0
    end

    def << result
      unless result.failure? then
        self.pass_count += 1
        print_status
      else
        failures << result
        self.fail_count += 1
        print_status
      end
    end

    def print_status
      passed = "\033[32m #{pass_count} Passed"
      failed = fail_count > 0 ? ", \033[031m #{fail_count} Failed" : ""
      print "#{passed}#{failed} \r"
    end

    def summary
      puts
      failures.each do |result|
        puts
        puts "Fail: #{result.class}##{result.name}: #{result.failure.message}"
        puts result.failure.backtrace.first
      end
    end
  end
end
