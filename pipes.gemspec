# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipes/version'

Gem::Specification.new do |gem|
  gem.name          = "pipes"
  gem.version       = Pipes::VERSION
  gem.authors       = ["Mike Pack"]
  gem.email         = ["mikepackdev@gmail.com"]
  gem.description   = %q{A Redis-backed concurrency management system}
  gem.summary       = %q{A Redis-backed concurrency management system}
  gem.homepage      = "http://www.github.com/mikepack/pipes"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'resque', '~> 1.22.0'
  gem.add_dependency 'redis-objects', '~> 0.5.3'
  gem.add_dependency 'abyss', '~> 0.4.0'

  gem.add_development_dependency 'rspec'
end
