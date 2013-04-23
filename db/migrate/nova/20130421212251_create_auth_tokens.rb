class CreateAuthTokens < ActiveRecord::Migration
  def self.up
    create_table :auth_tokens, {:id => false} do |t|
      t.string :token_hash
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :user_id
      t.string :server_management_url
      t.string :storage_url
      t.string :cdn_management_url

      t.timestamps
    end
    execute "ALTER TABLE auth_tokens ADD PRIMARY KEY (token_hash);"
  end

  def self.down
    drop_table :auth_tokens
  end
end
