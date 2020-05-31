$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

task :default => :spec

task :build do
  system "gem build templater.gemspec"
end

task :install do
  system "gem install templater-1.0.0.gem"
end

task :push do
  system "gem push templater-1.0.0.gem"
end

task :full => [:build, :install, :spec]
