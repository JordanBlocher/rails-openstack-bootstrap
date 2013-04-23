class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :api_url
      t.string :username
      t.string :password
      t.float :weight_offset
      t.float :weight_scale
      t.string :name
      t.boolean :is_parent
      t.string :rpc_host
      t.integer :rpc_port
      t.string :rpc_virtual_host

      t.timestamps
    end
  end
end
