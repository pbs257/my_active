require './lib/app_helper.rb'
require 'rake/testtask'
ActiveRecordMigrations.load_tasks

task :default => :migrate

desc "Run migrations"
task :migrate do
  ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end

namespace :test do
  task :block do
    puts "Hello, Peter"

  end
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test_block.rb']
  t.verbose = true
end


