class CreateSecurityGroupInstanceAssociations < ActiveRecord::Migration
  def change
    create_table :security_group_instance_associations do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :security_group_id
      t.integer :instance_id

      t.timestamps
    end
  end
end
