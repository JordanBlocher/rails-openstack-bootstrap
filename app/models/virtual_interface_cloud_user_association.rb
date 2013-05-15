class VirtualInterfaceCloudUserAssociation < App

  attr_accessible :shared_ip, :created_at, :deleted_at

  scope :virtual_interface_associated_ips, includes(:joins => (CloudUser.shared==FloatingIp.shared))
  
  belongs_to :virtual_interface
  belongs_to :cloud_user
  belongs_to :floating_ip

end
