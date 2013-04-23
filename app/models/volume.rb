class Volume < Nova
  attr_accessible :attach_status, :attach_time, :availability_zone, :created_at, :deleted, :deleted_at, :display_description, :display_name, :ec2_id, :host, :instance_id, :launched_at, :mountpoint, :project_id, :provider_auth, :provider_location, :scheduled_at, :size, :snapshot_id, :status, :terminated_at, :updated_at, :user_id, :volume_type_id
end
