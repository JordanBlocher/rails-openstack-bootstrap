class DnsDomain < Nova
  set_primary_key :domain

  attr_accessible :availability_zone, :created_at, :deleted, :deleted_at, :domain, :project_id, :scope, :updated_at
end
