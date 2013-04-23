class CreateInstanceMetadata < ActiveRecord::Migration
  def change
    create_table :instance_metadata do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :instance_id
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
