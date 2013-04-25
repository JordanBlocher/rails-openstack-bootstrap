class InstanceType < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :ephemeral_gb, :flavorid, :memory_mb, :name, :root_gb, :rxtx_factor, :swap, :updated_at, :vcpu_weight, :vcpus
  has_many :instance_type_extra_spec
end
