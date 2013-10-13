require "bundler/gem_tasks"

require 'rake/testtask'

desc "Run the unit test suite"
task :default => 'test'

Rake::TestTask.new(:test) do |t|
  t.pattern = 'test/unit/*_test.rb'
  t.libs << 'test'
  t.verbose = true
end

