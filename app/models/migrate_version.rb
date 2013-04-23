class MigrateVersion < Nova
  set_primary_key :repository_id

  attr_accessible :repository_id, :repository_path, :version
end

class MigrateVersion < Glance
  set_primary_key :repository_id

  attr_accessible :repository_id, :repository_path, :version
end
