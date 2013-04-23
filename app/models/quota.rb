class Quota < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :hard_limit, :project_id, :resource, :updated_at
end
