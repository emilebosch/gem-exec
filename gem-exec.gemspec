# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gem_exec/version"

Gem::Specification.new do |spec|
  spec.name = "gem-exec"
  spec.version = GemExec::VERSION
  spec.authors = ["Emile Bosch"]
  spec.email = ["emilebosch@me.com"]

  spec.summary = "NPX like generator"
  spec.description = "Install a gem and execute the command"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0"
end
