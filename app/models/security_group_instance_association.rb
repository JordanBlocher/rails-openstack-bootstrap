class SecurityGroupInstanceAssociation < Nova
  set_table_name 'security_group_instance_association'

  attr_accessible :created_at, :deleted, :deleted_at, :instance_id, :security_group_id, :updated_at
  
  has_many :security_groups
  has_many :instances
end
