# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'liquid/san/version'

Gem::Specification.new do |spec|
  spec.name          = "liquid-san"
  spec.version       = Liquid::San::VERSION
  spec.authors       = ["SHIMADA Keiki"]
  spec.email         = ["shimada.cake@gmail.com"]

  spec.summary       = %q{Useful Liquid template wrapper.}
  spec.description   = %q{Useful Liquid template wrapper.}
  spec.homepage      = "https://github.com/kkismd/liquid-san"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'liquid', '~> 3.0.1'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest-power_assert"
end
