class CreateQuota < ActiveRecord::Migration
  def change
    create_table :quota do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :project_id
      t.string :resource
      t.integer :hard_limit

      t.timestamps
    end
  end
end
