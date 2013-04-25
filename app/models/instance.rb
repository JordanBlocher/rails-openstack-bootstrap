class Instance < Nova
  attr_accessible :access_ip_v4, :access_ip_v6, :architecture, :auto_disk_config, :availability_zone, :cell_name, :config_drive, :created_at, :default_ephemeral_device, :default_swap_device, :deleted, :deleted_at, :disable_terminate, :display_description, :display_name, :ephemeral_gb, :host, :hostname, :image_ref, :instance_type_id, :internal_id, :kernel_id, :key_data, :key_name, :launch_index, :launched_at, :launched_on, :locked, :memory_mb, :os_type, :power_state, :progress, :project_id, :ramdisk_id, :reservation_id, :root_device_name, :root_gb, :scheduled_at, :server_name, :shutdown_terminate, :task_state, :terminated_at, :updated_at, :user_data, :user_id, :uuid, :vcpus, :vm_mode, :vm_state
  has_many :instance_type
  has_many :instance_type_extra_spec, :through => :instance_type
  has_many :block_device_mapping
  has_many :instance_info_cach
  has_many :iscsi_target, :through => :volume
  has_many :volume_type, :through => :volume
  has_many :volume_type_extra_spec, :through => :volume_type, :through => :volume
  has_many :volume_metadatum, :through => :volume
  has_many :security_group_instance_association
end
