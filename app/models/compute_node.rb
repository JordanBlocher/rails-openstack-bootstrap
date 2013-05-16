class ComputeNode < Nova
  attr_accessible :cpu_info, :created_at, :current_workload, :deleted, :deleted_at, :disk_available_least, :free_disk_gb, :free_ram_mb, :hypervisor_hostname, :hypervisor_type, :hypervisor_version, :local_gb, :local_gb_used, :memory_mb, :memory_mb_used, :running_vms, :service_id, :updated_at, :vcpus, :vcpus_used

  belongs_to :network
  has_many :services
end
