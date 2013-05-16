class VirtualInterface < Nova
  attr_accessible :address, :created_at, :deleted, :deleted_at, :instance_id, :network_id, :updated_at, :uuid

  belongs_to :service
  belongs_to :instance

  has_many :virtual_interface_cloud_user_associations
end
