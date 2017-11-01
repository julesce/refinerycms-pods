# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-pods'
  s.version           = '2.1.1'
  s.description       = 'Ruby on Rails Pods extension for Refinery CMS'
  s.date              = '2012-06-25'
  s.summary           = 'Pods extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*', 'db/**/*', 'public/**/*'] + ["readme.md"]
  s.authors           = 'James Thompson'
  s.email             = 'james.b.thompson@gmail.com'
  s.homepage          = 'https://github.com/julesce/refinerycms-pods'

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 3'
  s.add_dependency             'simple_form',         '~> 3.5.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 3'
end
