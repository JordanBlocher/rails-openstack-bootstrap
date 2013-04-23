class Glance < ActiveRecord::Base


ActiveRecord::Base.establish_connection(
  :adapter  => "mysql",
  :host     => "localhost",
  :username => "root",
  :password => "kikrat",
  :database => "glance"
)
  # attr_accessible :title, :body

end
