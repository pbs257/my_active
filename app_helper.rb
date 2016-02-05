require 'active_record'
require 'mysql2'
require 'logger'
require 'active_record_migrations'

ActiveRecord::Base.logger = Logger.new('debug.log')
configuration = YAML::load(IO.read('db/config.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])