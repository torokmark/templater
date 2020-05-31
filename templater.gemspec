Gem::Specification.new do |s|
  s.name        = 'templater'
  s.version     = '1.0.2'
  s.summary     = 'Templater!'
  s.description = 'A simple text template replacer'
  s.authors     = ['Mark Torok']
  s.files       = ['Gemfile', 'Gemfile.lock', 'README.md', 'LICENSE', 'Rakefile', 'lib/templater.rb', 'spec/templater_spec.rb']
  s.test_files  = ['spec/templater_spec.rb']
  s.homepage    = 'https://github.com/torokmark/templater'
  s.license     = 'MIT'

  s.add_development_dependency 'bundler', '~> 2.1' 
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'pry', ['0.10.1']
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'coveralls', '~> 0.7.2'
end
