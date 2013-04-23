class BlockDeviceMapping < Nova
  attr_accessible :connection_info, :created_at, :delete_on_termination, :deleted, :deleted_at, :device_name, :instance_id, :no_device, :snapshot_id, :updated_at, :virtual_name, :volume_id, :volume_size
end
