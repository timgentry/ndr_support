lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ndr_support/version'

Gem::Specification.new do |spec|
  spec.name          = 'ndr_support'
  spec.version       = NdrSupport::VERSION
  spec.authors       = ['NCRS Development Team']
  spec.email         = []
  spec.summary       = 'NDR Support library'
  spec.description   = 'Provides NDR classes and class extensions'
  spec.homepage      = 'https://github.com/PublicHealthEngland/ndr_support'
  spec.license       = 'MIT'

  # Exclude older versions of this gem from the package.
  spec.files         = `git ls-files -z`.split("\x0").reject { |s| s =~ /^pkg\// }
  # SECURE BNS 2018-08-06: Minimise sharing of (public-key encrypted) slack secrets in .travis.yml
  spec.files         -= %w[.travis.yml] # Not needed in the gem
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord',  '>= 5.2.0', '< 7'
  spec.add_dependency 'activesupport', '>= 5.2.0', '< 7'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.required_ruby_version = '>= 2.5.0'

  # Avoid std-lib minitest (which has different namespace)
  spec.add_development_dependency 'minitest', '>= 5.0.0'
  spec.add_development_dependency 'mocha', '~> 1.1'

  spec.add_development_dependency 'ndr_dev_support', '~> 5.4', '>= 5.4.5'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'listen', '< 3.1' # Bundle 1.12 should be (but isn't) resolving Ruby 2.1 issue
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-shell'
  spec.add_development_dependency 'guard-minitest'
  spec.add_development_dependency 'terminal-notifier-guard' if RUBY_PLATFORM =~ /darwin/
  spec.add_development_dependency 'simplecov'
end
