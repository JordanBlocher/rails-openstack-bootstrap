class CreateSecurityGroupRules < ActiveRecord::Migration
  def change
    create_table :security_group_rules do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :parent_group_id
      t.string :protocol
      t.integer :from_port
      t.integer :to_port
      t.string :cidr
      t.integer :group_id

      t.timestamps
    end
  end
end
