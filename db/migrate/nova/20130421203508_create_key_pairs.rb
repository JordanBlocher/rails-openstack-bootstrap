class CreateKeyPairs < ActiveRecord::Migration
  def change
    create_table :key_pairs do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :name
      t.string :user_id
      t.string :fingerprint
      t.text :public_key

      t.timestamps
    end
  end
end
