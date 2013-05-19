class CreateUserCloudUserAssociations < ActiveRecord::Migration
  def change
    create_table :user_cloud_user_associations do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :user_id
      t.string :cloud_user_id
      t.string :role
      t.boolean :is_openstack_admin
      t.boolean :is_cloud_admin

      t.timestamps
    end
  end
end
