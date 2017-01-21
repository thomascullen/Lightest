# Lightest

A stupidly simple testing framework.

This was an experimental project inspired by Ryan Davis' incredible talk on [Writing a test framework from scratch](https://www.youtube.com/watch?v=VPr5pmlAq20).

## Install

```
gem 'lightest'
```

or

```
gem install lightest
```

## Usage

Tests should be defined in methods prefixed with `_test` in classes that inherit from `Lightest::Test` in files that are prefixed with `_test.rb`

```ruby
// basic_test.rb
class BasicTest << Lightest::Test
  def simple_test
    a = 1 + 1
    assert a == 2, "a should be 2"
  end
end
```

You can then run the tests by simply using the `lightest` command

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

