# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'russpeeddev/version'

Gem::Specification.new do |spec|
  spec.name          = "russpeeddev"
  spec.version       = Russpeeddev::VERSION
  spec.authors       = ["vasche"]
  spec.email         = ["cho.vasche@gmail.com"]
  spec.description   = %q{Add shared layou teplates to speed up development new application}
  spec.summary       = %q{Add shared layou teplates to speed up development new application}
  spec.homepage      = "https://github.com/vasche"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.rubyforge_project = "russpeeddev"
end
