class CreateProviderFwRules < ActiveRecord::Migration
  def change
    create_table :provider_fw_rules do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :protocol
      t.integer :from_port
      t.integer :to_port
      t.string :cidr

      t.timestamps
    end
  end
end
