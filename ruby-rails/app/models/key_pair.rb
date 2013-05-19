class KeyPair < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :fingerprint, :name, :public_key, :updated_at, :user_id

  belongs_to :user
end
