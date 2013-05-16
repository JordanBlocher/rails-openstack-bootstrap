class FloatingIp < Nova
  self.table_name = 'nova.floating_ips'

  attr_accessible :address, :auto_assigned, :created_at, :deleted, :deleted_at, :fixed_ip_id, :host, :interface, :pool, :project_id, :updated_at

  alias_attribute :shared_ip, :address

  scope :floating_active, where(self.arel_table[:fixed_ip_id].not_eq(nil))
  scope :floating_inactive, where(self.arel_table[:fixed_ip_id].eq(nil))
  scope :shared, floating_active.select('address, fixed_ip_id')

  has_one :fixed_ip
end
