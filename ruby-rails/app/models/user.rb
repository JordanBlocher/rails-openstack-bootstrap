class User < Nova
  attr_accessible :access_key, :created_at, :deleted, :deleted_at, :is_admin, :name, :secret_key, :updated_at

  has_many :user_project_associations
  has_many :user_role_associations

end
