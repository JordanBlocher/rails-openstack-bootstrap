class FloatingIp < Nova
  attr_accessible :address, :auto_assigned, :created_at, :deleted, :deleted_at, :fixed_ip_id, :host, :interface, :pool, :project_id, :updated_at

  scope :floating_active, where(self.arel_table[:fixed_ip_id].not_eq(nil))
  scope :floating_inactive, where(self.arel_table[:fixed_ip_id].eq(nil))
  scope :shared, floating_active.select('address as shared_ip')

  has_one :fixed_ip
  has_many :virtual_interface_cloud_user_associations
  has_many_elsewhere :cloud_users, :through => :virtual_interface_cloud_user_associations
end
