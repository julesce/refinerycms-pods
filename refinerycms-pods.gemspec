Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-pods'
  s.version           = '1.0.3'
  s.description       = 'Ruby on Rails Pods engine for Refinery CMS'
  s.date              = '2012-03-23'
  s.summary           = 'Pods engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*', 'db/**/*', 'public/**/*']
	s.authors           = ['James Thompson', 'Byron Peters']
  s.email             = 'james.b.thompson@gmail.com'
  s.homepage          = 'https://github.com/julesce/refinerycms-pods'
end