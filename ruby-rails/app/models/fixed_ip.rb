class FixedIp < Nova
  attr_accessible :address, :allocated, :created_at, :deleted, :deleted_at, :host, :instance_id, :leased, :network_id, :reserved, :updated_at, :virtual_interface_id

  scope :fixed_active, where("allocated=?", 1)
  scope :fixed_inactive, where("allocated=?", 0)

  has_one :virtual_interface
  has_many :floating_ips
end
