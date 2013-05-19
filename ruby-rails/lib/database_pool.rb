require 'active_record'

class App < ActiveRecord::Base
      establish_connection(
         :adapter  => "postgresql",
         :host     => "localhost",
         :username => "postgres",
         :password => "pg",
         :database => "cloud_development"
)
  self.abstract_class = true

end

class Nova < ActiveRecord::Base
      establish_connection(
         :adapter  => "ruby_mysql",
         :socket => "/var/run/mysqld/mysqld.sock",
         :host     => "localhost",
         :username => "root",
         :password => "kikrat",
         :database => "nova"
)
  self.abstract_class = true
  
  def self.table_name_prefix
    "nova."
  end

end

class Glance < ActiveRecord::Base
      establish_connection(
         :adapter  => "ruby_mysql",
         :socket => "/var/run/mysqld/mysqld.sock",
         :host     => "localhost",
         :username => "root",
         :password => "kikrat",
         :database => "glance"
)
  self.abstract_class = true

  def self.table_name_prefix
    "glance."
  end
end

