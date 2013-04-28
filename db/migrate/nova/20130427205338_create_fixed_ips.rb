class CreateFixedIps < ActiveRecord::Migration
  def change
    create_table :fixed_ips do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :address
      t.integer :network_id
      t.integer :instance_id
      t.boolean :allocated
      t.boolean :leased
      t.boolean :reserved
      t.integer :virtual_interface_id
      t.string :host

      t.timestamps
    end
    add_index :fixed_ips, :network_id
    add_index :fixed_ips, :instance_id
    add_index :fixed_ips, :virtual_interface_id, :name => "fixed_ips_virtual_interface_id_fkey"
  end
end
