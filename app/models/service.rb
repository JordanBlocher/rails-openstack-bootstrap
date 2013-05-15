class Service < Nova
  attr_accessible :availability_zone, :binary, :created_at, :deleted, :deleted_at, :disabled, :host, :report_count, :topic, :updated_at
  
  belongs_to :network
  
  has_many :virtual_interfaces
end
