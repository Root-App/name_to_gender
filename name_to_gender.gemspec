# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'name_to_gender/version'

Gem::Specification.new do |spec|
  spec.name          = "name_to_gender"
  spec.version       = NameToGender::VERSION
  spec.authors       = ["ROOT Devs"]
  spec.email         = ["devs@joinroot.com"]

  spec.summary       = %q{Determine gender based upon first name}
  spec.description   = %q{}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|bin)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
