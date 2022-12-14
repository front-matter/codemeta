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
  s.description   = 'Ruby library for reading, validating, and writing CodeMeta metadata, integrates with the Ruby-CFF gem'
  s.require_paths = ['lib']
  s.version       = Codemeta::VERSION
  s.extra_rdoc_files = ['README.md']
  s.license = 'MIT'
  s.required_ruby_version = '>= 2.7.0'

  s.add_dependency 'cff', '~> 1.0', '>= 1.0.1'
end
