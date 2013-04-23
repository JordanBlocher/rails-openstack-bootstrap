class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :volume_id
      t.string :user_id
      t.string :project_id
      t.string :status
      t.string :progress
      t.integer :volume_size
      t.datetime :scheduled_at
      t.string :display_name
      t.string :display_description

      t.timestamps
    end
  end
end
