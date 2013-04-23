class CreateSmVolumes < ActiveRecord::Migration
  def change
    create_table :sm_volumes do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :backend_id
      t.string :vdi_uuid

      t.timestamps
    end
  end
end
