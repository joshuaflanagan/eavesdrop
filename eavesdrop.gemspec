# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eavesdrop/version'

Gem::Specification.new do |spec|
  spec.name          = "eavesdrop"
  spec.version       = Eavesdrop::VERSION
  spec.authors       = ["Joshua Flanagan"]
  spec.email         = ["joshuaflanagan@gmail.com"]
  spec.summary       = %q{Records interesting events}
  spec.description   = %q{Records interesting events. ActiveRecord queries, HTTP calls, etc}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
