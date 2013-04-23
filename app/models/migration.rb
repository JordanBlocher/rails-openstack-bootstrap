class Migration < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :dest_compute, :dest_host, :instance_uuid, :new_instance_type_id, :old_instance_type_id, :source_compute, :status, :updated_at
end
