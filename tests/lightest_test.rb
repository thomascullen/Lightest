class LightestTest < Lightest::Test
  def test_files_test
    files = Lightest.test_files.select { |f| f =~ /lightest_test/ }
    assert files.length > 0, "Should be able to find lightest_test.rb"
  end
end
