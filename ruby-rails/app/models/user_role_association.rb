class UserRoleAssociation < Nova
  self.table_name = 'nova.user_role_association'

  attr_accessible :created_at, :deleted, :deleted_at, :role, :updated_at, :user_id

  belongs_to :user
  belongs_to :security_group

end
