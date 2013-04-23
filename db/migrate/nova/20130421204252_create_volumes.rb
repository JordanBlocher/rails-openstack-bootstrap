class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :ec2_id
      t.string :user_id
      t.string :project_id
      t.string :host
      t.integer :size
      t.string :availability_zone
      t.integer :instance_id
      t.string :mountpoint
      t.string :attach_time
      t.string :status
      t.string :attach_status
      t.datetime :scheduled_at
      t.datetime :launched_at
      t.datetime :terminated_at
      t.string :display_name
      t.string :display_description
      t.string :provider_location
      t.string :provider_auth
      t.integer :snapshot_id
      t.integer :volume_type_id

      t.timestamps
    end
  end
end
