class CreateInstanceInfoCaches < ActiveRecord::Migration
  def change
    create_table :instance_info_caches do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.text :network_info
      t.string :instance_id

      t.timestamps
    end
    add_index :instance_info_caches, :instance_id
  end
end
