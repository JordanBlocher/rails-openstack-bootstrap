class Project < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :description, :name, :project_manager, :updated_at

  has_many :user_project_associations
  has_one :certificate
end
