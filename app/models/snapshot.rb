class Snapshot < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :display_description, :display_name, :progress, :project_id, :scheduled_at, :status, :updated_at, :user_id, :volume_id, :volume_size

  belongs_to :project
  belongs_to :user
end
