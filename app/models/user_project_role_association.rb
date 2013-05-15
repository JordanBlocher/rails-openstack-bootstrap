class UserProjectRoleAssociation < Nova
  set_table_name 'nova.user_project_role_association'

  attr_accessible :created_at, :deleted, :deleted_at, :project_id, :role, :updated_at, :user_id

  belongs_to :user_project_association
  belongs_to :user_role_association

end
