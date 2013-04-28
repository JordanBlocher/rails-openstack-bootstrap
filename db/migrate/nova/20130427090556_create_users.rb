class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :name
      t.string :access_key
      t.string :secret_key
      t.boolean :is_admin

      t.timestamps
    end
  end
end
