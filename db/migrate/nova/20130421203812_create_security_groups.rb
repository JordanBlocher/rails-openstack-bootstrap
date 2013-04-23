class CreateSecurityGroups < ActiveRecord::Migration
  def change
    create_table :security_groups do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :name
      t.string :description
      t.string :user_id
      t.string :project_id

      t.timestamps
    end
  end
end
