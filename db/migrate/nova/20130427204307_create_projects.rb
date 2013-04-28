class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :name
      t.string :description
      t.string :project_manager

      t.timestamps
    end
    add_index :projects, :project_manager
  end
end
