class User < Nova
  attr_accessible :access_key, :created_at, :deleted, :deleted_at, :is_admin, :name, :secret_key, :updated_at

  belongs_to :user_project_association
  belongs_to :security_group
end
