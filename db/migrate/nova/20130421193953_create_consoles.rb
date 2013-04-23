class CreateConsoles < ActiveRecord::Migration
  def change
    create_table :consoles do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :instance_name
      t.integer :instance_id
      t.string :password
      t.integer :port
      t.integer :pool_id

      t.timestamps
    end
  end
end
