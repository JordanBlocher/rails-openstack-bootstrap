class UserProjectAssociation < Nova
  set_table_name 'user_project_association'

  attr_accessible :created_at, :deleted, :deleted_at, :project_id, :updated_at, :user_id

  has_many :users
  has_many :projects
end
