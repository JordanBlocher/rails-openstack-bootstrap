class CloudUser < App
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :sign_in_count, :current_sign_in, :last_sign_in, :current_sign_in_ip, :last_sign_in_ip, :admin, :created_at, :updated_at
  
  scope :shared, select('last_sign_in_ip as shared_ip') 

  has_many :virtual_interface_cloud_user_associations
  has_many :user_cloud_user_associations


end
