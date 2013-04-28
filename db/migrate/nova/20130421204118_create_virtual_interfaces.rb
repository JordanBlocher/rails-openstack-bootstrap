class CreateVirtualInterfaces < ActiveRecord::Migration
  def change
    create_table :virtual_interfaces do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :address
      t.integer :network_id
      t.integer :instance_id
      t.string :uuid

      t.timestamps
    end
    add_index :virtual_interfaces, :address, :unique => true
    add_index :virtual_interfaces, :network_id
    add_index :virtual_interfaces, :instance_id 
  end
end
