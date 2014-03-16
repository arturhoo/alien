# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alien/version'

Gem::Specification.new do |spec|
  spec.name          = "alien"
  spec.version       = Alien::VERSION
  spec.authors       = ["Artur Rodrigues"]
  spec.email         = ["arturhoo@gmail.com"]
  spec.summary       = %q{Interface to Alien Technology ARCA enabled readers.}
  spec.description   = %q{Ruby interface to Alien Technology ARCA enabled readers.}
  spec.homepage      = "http://github.com/arturhoo/alien"
  spec.license       = "BSD"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
