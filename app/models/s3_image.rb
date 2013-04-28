class S3Image < Nova
  attr_accessible :created_at, :deleted, :deleted_at, :updated_at, :uuid

  has_one :image_property
end
