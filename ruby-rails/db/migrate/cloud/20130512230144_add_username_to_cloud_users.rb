class AddUsernameToCloudUsers < ActiveRecord::Migration
  def change
    add_column :cloud_users, :username, :string
  end
end
