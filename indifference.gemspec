# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indifference/version'

Gem::Specification.new do |spec|
  spec.name          = "indifference"
  spec.version       = Indifference::VERSION
  spec.authors       = ["Chase McCarthy"]
  spec.email         = ["chase@code0100fun.com"]

  spec.summary       = %q{Just `with_indifferent_access`.}
  spec.description   = %q{For when you just need `with_indifferent_access`. Stolen 100% from ActiveSupport.}
  spec.homepage      = "https://github.com/code0100fun/indifference"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
