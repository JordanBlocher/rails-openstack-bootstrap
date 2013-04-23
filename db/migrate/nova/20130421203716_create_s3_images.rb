class CreateS3Images < ActiveRecord::Migration
  def change
    create_table :s3_images do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :uuid

      t.timestamps
    end
  end
end
