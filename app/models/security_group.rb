class SecurityGroup < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :description, :name, :project_id, :updated_at, :user_id

  has_many :security_group_instance_associations
  has_many :user_role_associations
  has_many :security_group_rules

end
