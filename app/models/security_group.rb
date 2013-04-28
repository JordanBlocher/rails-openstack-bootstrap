class SecurityGroup < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :description, :name, :project_id, :updated_at, :user_id

  belongs_to :security_group_instance_association
  belongs_to :project
  belongs_to :user
  has_many :security_group_rules
end
