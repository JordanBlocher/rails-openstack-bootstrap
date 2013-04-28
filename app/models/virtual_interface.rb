class VirtualInterface < Nova
  attr_accessible :address, :created_at, :deleted, :deleted_at, :instance_id, :network_id, :updated_at, :uuid

  belongs_to :instance
  belongs_to :network
end
