class AddUsernameToCloudUser < ActiveRecord::Migration
  def change
    add_column :cloud_users, :name, :string
  end
end
