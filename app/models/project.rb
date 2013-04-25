class Project < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :description, :name, :project_manager, :updated_at
  belongs_to :user
  has_many :dns_domain
  has_many :user_project_association

end
