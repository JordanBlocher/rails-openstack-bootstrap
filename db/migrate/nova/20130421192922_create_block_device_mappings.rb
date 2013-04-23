class CreateBlockDeviceMappings < ActiveRecord::Migration
  def change
    create_table :block_device_mappings do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :instance_id
      t.string :device_name
      t.boolean :delete_on_termination
      t.string :virtual_name
      t.integer :snapshot_id
      t.integer :volume_id
      t.integer :volume_size
      t.boolean :no_device
      t.text :connection_info

      t.timestamps
    end
  end
end
