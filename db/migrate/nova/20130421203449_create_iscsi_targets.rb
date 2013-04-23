class CreateIscsiTargets < ActiveRecord::Migration
  def change
    create_table :iscsi_targets do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :target_num
      t.string :host
      t.integer :volume_id

      t.timestamps
    end
  end
end
