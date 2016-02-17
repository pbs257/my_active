require './lib/app_helper.rb'
ActiveRecordMigrations.load_tasks

task :default => :migrate

desc "Run migrations"
task :migrate do
  ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end