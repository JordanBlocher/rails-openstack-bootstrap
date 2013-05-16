class CloudUser < App

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :sign_in_count, :current_sign_in, :last_sign_in, :current_sign_in_ip, :last_sign_in_ip, :admin, :created_at, :updated_at

  alias_attribute :shared_ip, :current_sign_in_ip
  
  has_many :virtual_interface_cloud_user_associations
  has_many_elsewhere :virtual_interfaces, :through => :virtual_interface_cloud_user_association
  has_many_elsewhere :fixed_ips, :through => :virtual_interfaces
  has_many_elsewhere :floating_ips, :through => :fixed_ips
  has_many :user_cloud_user_associations

end
