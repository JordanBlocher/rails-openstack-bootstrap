class FloatingIp < Nova
  attr_accessible :address, :auto_assigned, :created_at, :deleted, :deleted_at, :fixed_ip_id, :host, :interface, :pool, :project_id, :updated_at

  has_one :fixed_ip
end
