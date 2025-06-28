# Encoding: UTF-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poefy/sqlite3/version.rb'

Gem::Specification.new do |s|
  s.name          = 'poefy-sqlite3'
  s.authors       = ['Paul Thompson']
  s.email         = ['nossidge@gmail.com']

  s.summary       = %q{SQLite interface for the 'poefy' gem}
  s.description   = %q{SQLite interface for the 'poefy' gem}
  s.homepage      = 'https://github.com/nossidge/poefy-sqlite3'

  s.version       = Poefy::Sqlite3.version_number
  s.date          = Poefy::Sqlite3.version_date
  s.license       = 'GPL-3.0-or-later'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 3.2.0'

  s.add_development_dependency('bundler',     '~> 1.13')
  s.add_development_dependency('rake',        '~> 10.0')
  s.add_development_dependency('rspec',       '~> 3.0')
  s.add_development_dependency('ruby_rhymes', '~> 0.1')

  s.add_runtime_dependency('poefy',   '~> 1.1', '>= 1.1.0')
  s.add_runtime_dependency('sqlite3', '~> 1.3', '>= 1.3.13')
end
