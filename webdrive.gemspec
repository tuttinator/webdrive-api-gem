# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webdrive/version'

Gem::Specification.new do |spec|
  spec.name          = "webdrive"
  spec.version       = Webdrive::VERSION
  spec.authors       = ["Caleb Tutty"]
  spec.email         = ["caleb@prettymint.co.nz"]
  spec.description   = %q{Wrapping the XML-RPC Ruby standard library and building an abstraction layer to conveniently interact with the Webdrive.co.nz reseller XML-RPC API.}
  spec.summary       = %q{Interact with the Webdrive.co.nz reseller XML-RPC API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
