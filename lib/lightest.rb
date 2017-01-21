require_relative "./lightest/test"
require_relative "./lightest/reporter"

module Lightest
  TESTS = []

  def self.run_tests
    test_files.each { |f| load(f) }
    reporter = Reporter.new
    TESTS.each do |test_class|
      test_class.run(reporter)
    end
    reporter.summary
  end

  private

  def self.test_files
    Dir["#{Dir.pwd}/**/*_test.rb"]
  end
end

