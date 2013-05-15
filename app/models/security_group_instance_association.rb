class SecurityGroupInstanceAssociation < Nova
  set_table_name 'nova.security_group_instance_association'

  attr_accessible :created_at, :deleted, :deleted_at, :instance_id, :security_group_id, :updated_at
  
  belongs_to :security_group, :polymorphic => true
  belongs_to :instance, :polymorphic => true
  belongs_to :fixed_ip, :polymorphic => true
end
