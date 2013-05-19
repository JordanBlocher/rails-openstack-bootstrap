class VirtualInterfaceCloudUserAssociation < App
  attr_accessible :cloud_username, :created_at, :deleted_at, :shared_ip, 
  :updated_at, :virtual_interface_id

  alias_attribute  :current_sign_in_ip, :shared_ip
  alias_attribute :address, :shared_ip

  belongs_to :cloud_user
  belongs_to :virtual_interface

end
