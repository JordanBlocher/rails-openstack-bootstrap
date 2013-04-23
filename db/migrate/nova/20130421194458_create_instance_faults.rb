class CreateInstanceFaults < ActiveRecord::Migration
  def change
    create_table :instance_faults do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :instance_uuid
      t.integer :code
      t.string :message
      t.text :details

      t.timestamps
    end
  end
end
