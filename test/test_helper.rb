require 'active_record'
require 'mysql2'
require 'logger'
require 'yaml'

configuration = YAML::load(IO.read('../db/config.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])