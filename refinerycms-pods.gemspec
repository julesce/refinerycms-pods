# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-pods'
  s.version           = '2.0.2'
  s.description       = 'Ruby on Rails Pods extension for Refinery CMS'
  s.date              = '2012-05-07'
  s.summary           = 'Pods extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*', 'db/**/*', 'public/**/*'] + ["readme.md"]
  s.authors           = 'James Thompson'
  s.email             = 'james.b.thompson@gmail.com'
  s.homepage          = 'https://github.com/julesce/refinerycms-pods'

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.1'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.0.1'
end
