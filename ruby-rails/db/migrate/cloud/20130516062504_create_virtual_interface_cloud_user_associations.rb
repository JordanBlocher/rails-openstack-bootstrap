class CreateVirtualInterfaceCloudUserAssociations < ActiveRecord::Migration
  def change
    create_table :virtual_interface_cloud_user_associations do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.string :cloud_username
      t.integer :virtual_interface_id
      t.string :shared_ip
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
