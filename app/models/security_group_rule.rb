class SecurityGroupRule < Nova
  attr_accessible :cidr, :created_at, :deleted, :deleted_at, :from_port, :group_id, :parent_group_id, :protocol, :to_port, :updated_at
end
