Gem::Specification.new do |s|
  s.name        = 'templater'
  s.version     = '1.0.0'
  s.date        = '2014-12-27'
  s.summary     = "Templater!"
  s.description = "A simple text template replacer"
  s.authors     = ["Mark Torok"]
  s.email       = 'torok.marko@gmail.com'
  s.files       = ["Gemfile", "Gemfile.lock", "README.md", "LICENSE", "Rakefile", "lib/templater.rb", "spec/templater_spec.rb"]
  s.test_files  = ["spec/templater_spec.rb"]
  s.homepage    = 'http://rubygems.org/gems/templater'
  s.license     = 'MIT'

  s.add_development_dependency "pry", ["0.10.1"]
end
