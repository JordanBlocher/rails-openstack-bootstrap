class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :internal_id
      t.string :user_id
      t.string :project_id
      t.string :image_ref
      t.string :kernel_id
      t.string :ramdisk_id
      t.string :server_name
      t.integer :launch_index
      t.string :key_name
      t.text :key_data
      t.integer :power_state
      t.string :vm_state
      t.integer :memory_mb
      t.integer :vcpus
      t.string :hostname
      t.string :host
      t.text :user_data
      t.string :reservation_id
      t.datetime :scheduled_at
      t.datetime :launched_at
      t.datetime :terminated_at
      t.string :display_name
      t.string :display_description
      t.string :availability_zone
      t.boolean :locked
      t.string :os_type
      t.text :launched_on
      t.integer :instance_type_id
      t.string :vm_mode
      t.string :uuid
      t.string :architecture
      t.string :root_device_name
      t.string :access_ip_v4
      t.string :access_ip_v6
      t.string :config_drive
      t.string :task_state
      t.string :default_ephemeral_device
      t.string :default_swap_device
      t.integer :progress
      t.boolean :auto_disk_config
      t.boolean :shutdown_terminate
      t.boolean :disable_terminate
      t.integer :root_gb
      t.integer :ephemeral_gb
      t.string :cell_name

      t.timestamps
    end
    add_index :instances, :project_id
    add_index :instances, :uuid
  end
end
