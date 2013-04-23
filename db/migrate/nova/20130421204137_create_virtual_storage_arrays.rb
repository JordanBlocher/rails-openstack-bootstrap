class CreateVirtualStorageArrays < ActiveRecord::Migration
  def change
    create_table :virtual_storage_arrays do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :display_name
      t.string :display_description
      t.string :project_id
      t.string :availability_zone
      t.integer :instance_type_id
      t.string :image_ref
      t.integer :vc_count
      t.integer :vol_count
      t.string :status

      t.timestamps
    end
  end
end
