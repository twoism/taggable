require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
 
begin
  require 'jeweler'
  Jeweler::Tasks.new do |g|
    g.name = 'taggable'
    g.summary = %(Tagging for MongoMapper)
    g.description = %(Tagging for MongoMapper)
    g.email = 'signalstatic@gmail.com'
    g.homepage = 'http://github.com/twoism/taggable'
    g.authors = %w(twoism)
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts 'Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com'
end
 
Rake::TestTask.new do |t|
  t.libs = %w(test)
  t.pattern = 'test/**/*_test.rb'
end
 
task :default => :test