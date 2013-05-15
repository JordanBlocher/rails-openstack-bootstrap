class VirtualInterface < Nova
  attr_accessible :address, :created_at, :deleted, :deleted_at, :instance_id, :network_id, :updated_at, :uuid

  belongs_to :service
  belongs_to :instance, :polymorphic =>true
  has_many :compute_nodes

  has_one :network
  has_many :instances
  has_many :fixed_ips, :through => :instances
  has_many :floating_ips, :through => :fixed_ips

  has_many :virtual_interface_cloud_user_associations
  has_many_elsewhere :cloud_users, :through => :virtual_interface_cloud_user_associations
end
