class CreateFloatingIps < ActiveRecord::Migration
  def change
    create_table :floating_ips do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :address
      t.integer :fixed_ip_id
      t.string :project_id
      t.string :host
      t.boolean :auto_assigned
      t.string :pool
      t.string :interface

      t.timestamps
    end
  end
end
