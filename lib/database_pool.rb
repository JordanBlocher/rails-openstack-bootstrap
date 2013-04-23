require 'active_record'

class App < ActiveRecord::Base
      establish_connection(
         :adapter  => "postgresql",
         :host     => "#CLOUD_ENV",
         :username => "postgres",
         :password => "PG_PASS",
         :database => "cloud_#{Rails.env}"
)
  self.abstract_class = true
end

class Nova < ActiveRecord::Base
      establish_connection(
         :adapter  => "mysql2",
         :host     => "#NOVA_ENV",
         :username => "root",
         :password => "#{SQL_PASS}",
         :database => "nova"
)
  self.abstract_class = true
end

class Glance < ActiveRecord::Base
      establish_connection(
         :adapter  => "mysql2",
         :host     => "#GLANCE_ENV",
         :username => "root",
         :password => "#{SQL_PASS}",
         :database => "glance"
)
  self.abstract_class = true
end

