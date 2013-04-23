class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.boolean :injected
      t.string :cidr
      t.string :netmask
      t.string :bridge
      t.string :gateway
      t.string :broadcast
      t.string :dns1
      t.integer :vlan
      t.string :vpn_public_address
      t.integer :vpn_public_port
      t.string :vpn_private_address
      t.string :dhcp_start
      t.string :project_id
      t.string :host
      t.string :cidr_v6
      t.string :gateway_v6
      t.string :label
      t.string :netmask_v6
      t.string :bridge_interface
      t.boolean :multi_host
      t.string :dns2
      t.string :uuid
      t.integer :priority
      t.integer :rxtx_base

      t.timestamps
    end
  end
end
