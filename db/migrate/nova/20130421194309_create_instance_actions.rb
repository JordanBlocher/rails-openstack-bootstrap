class CreateInstanceActions < ActiveRecord::Migration
  def change
    create_table :instance_actions do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :action
      t.text :error
      t.string :instance_uuid

      t.timestamps
    end
  end
end
