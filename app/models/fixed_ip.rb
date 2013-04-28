class FixedIp < Nova
  attr_accessible :address, :allocated, :created_at, :deleted, :deleted_at, :host, :instance_id, :leased, :network_id, :reserved, :updated_at, :virtual_interface_id

  belongs_to :virtual_interface
end
