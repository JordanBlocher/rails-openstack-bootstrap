class AuthToken < Nova
  set_primary_key :token_hash

  attr_accessible :cdn_management_url, :created_at, :deleted, :deleted_at, :server_management_url, :storage_url, :token_hash, :updated_at, :user_id
end
