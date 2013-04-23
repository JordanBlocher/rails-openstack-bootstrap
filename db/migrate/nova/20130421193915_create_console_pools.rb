class CreateConsolePools < ActiveRecord::Migration
  def change
    create_table :console_pools do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :address
      t.string :username
      t.string :password
      t.string :console_type
      t.string :public_hostname
      t.string :host
      t.string :compute_host

      t.timestamps
    end
  end
end
