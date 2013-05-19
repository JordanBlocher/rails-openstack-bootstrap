class CreateUserRoleAssociations < ActiveRecord::Migration
  def change
    create_table :user_role_associations do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :user_id
      t.string :role

      t.timestamps
    end
  end
end
