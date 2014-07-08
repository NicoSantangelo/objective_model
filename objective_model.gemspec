# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'objective_model/version'

Gem::Specification.new do |spec|
  spec.name          = "objective_model"
  spec.version       = ObjectiveModel::VERSION
  spec.authors       = ["Nicolas Santangelo"]
  spec.email         = ["santangelonicolas@gmail.com"]
  spec.summary       = %q{Create Objective-C models from a JSON endpoint or a Rails server}
  spec.description   = %q{This gem allows you to simply map all your server models to your mobile app. Using either rails or a JSON file, the gem will look every property and create a proper model.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
