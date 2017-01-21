# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lightest/version'

Gem::Specification.new do |spec|
  spec.name          = "lightest"
  spec.version       = Lightest::VERSION
  spec.authors       = ["Thomas Cullen"]
  spec.email         = ["thomascullen92@gmail.com"]

  spec.summary       = "A super lightweight testing framework"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.executables   = ["lightest"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end

