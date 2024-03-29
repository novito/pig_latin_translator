# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pig_latin_translator/version'

Gem::Specification.new do |spec|
  spec.name          = "pig_latin_translator"
  spec.version       = PigLatinTranslator::VERSION
  spec.authors       = ["Joan Roig"]
  spec.email         = ["roigarderiu@gmail.com"]
  spec.summary       = %q{Pig Latin translator.}
  spec.description   = %q{Pig Latin translator.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
