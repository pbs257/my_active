require 'active_record'
require 'mysql2'
require 'logger'
require 'active_record_migrations'
require 'will_paginate'
require 'will_paginate/active_record'
require 'bootstrap-will_paginate'




ActiveRecord::Base.logger = Logger.new(__dir__ + '/../var/debug.log')
configuration = YAML::load(IO.read(__dir__ + '/../db/config.yml'))
ActiveRecord::Base.establish_connection(configuration[ENV['RAILS_ENV']])