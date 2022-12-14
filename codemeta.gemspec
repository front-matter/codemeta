# frozen_string_literal: true

require 'English'
require 'date'
require File.expand_path('lib/codemeta/version', __dir__)

Gem::Specification.new do |s|
  s.authors       = 'Martin Fenner'
  s.email         = 'martin@front-matter.io'
  s.name          = 'codemeta'
  s.homepage      = 'https://github.com/front-matter/codemeta'
  s.summary       = 'Ruby library for reading, validating, and writing CodeMeta metadata'
  s.description   = 'Ruby library for reading, validating, and writing CodeMeta
                     metadata, integrates with the Ruby-CFF gem'
  s.require_paths = ['lib']
  s.version       = Codemeta::VERSION
  s.extra_rdoc_files = ['README.md']
  s.license = 'MIT'
  s.required_ruby_version = '>= 2.7.0'
  s.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.metadata['rubygems_mfa_required'] = 'true'

  s.add_dependency 'cff', '~> 1.0', '>= 1.0.1'
  s.add_dependency 'schema_dot_org', '~> 1.7', '>= 1.7.1'

  s.add_development_dependency 'bundler', '~> 2'
  s.add_development_dependency 'rake', '>= 12.3.3'
  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'rubocop', '~> 1.40'
  s.add_development_dependency 'rubocop-performance', '~> 1.15'
  s.add_development_dependency 'rubocop-rspec', '~> 2.13'
  s.add_development_dependency 'simplecov', '0.21.2'
  s.add_development_dependency 'sorbet', '>= 0.5.5890'

  s.add_runtime_dependency 'sorbet-runtime', '>= 0.5.5890'
end
