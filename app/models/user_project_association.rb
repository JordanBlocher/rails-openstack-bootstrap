class UserProjectAssociation < Nova
  set_table_name 'nova.user_project_association'

  attr_accessible :created_at, :deleted, :deleted_at, :project_id, :updated_at, :user_id

  belongs_to :user, :polymorphic =>  true
  belongs_to :project, :polymorphic => true

end
