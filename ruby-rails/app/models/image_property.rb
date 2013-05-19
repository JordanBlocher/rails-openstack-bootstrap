class ImageProperty < Glance
  attr_accessible :created_at, :deleted, :deleted_at, :image_id, :name, :updated_at, :value

  belongs_to :s3_image
end
