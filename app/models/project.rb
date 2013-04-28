class Project < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :description, :name, :project_manager, :updated_at

  belongs_to :user_project_association, :foreign_key => [:user_id, :project_id]
  has_one :certificate
  has_many :floating_ips
  has_many :instances
end
