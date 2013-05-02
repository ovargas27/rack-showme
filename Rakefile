require 'bundler'
require 'rake'
require 'rake/testtask'

Bundler::GemHelper.install_tasks

# Minitest
Rake::TestTask.new do |t|
  t.pattern = 'test/**/*_test.rb'
  t.libs << 'test'
end

task :default => [:test]
