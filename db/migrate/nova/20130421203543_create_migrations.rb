class CreateMigrations < ActiveRecord::Migration
  def change
    create_table :migrations do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :source_compute
      t.string :dest_compute
      t.string :dest_host
      t.string :status
      t.string :instance_uuid
      t.integer :old_instance_type_id
      t.integer :new_instance_type_id

      t.timestamps
    end
  end
end
