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
         :adapter  => "mysql2",
         :host     => "localhost",
         :username => "root",
         :password => "kikrat",
         :database => "nova"
)
  self.abstract_class = true
end

class Glance < ActiveRecord::Base
      establish_connection(
         :adapter  => "mysql2",
         :host     => "localhost",
         :username => "root",
         :password => "kikrat",
         :database => "glance"
)
  self.abstract_class = true
end

