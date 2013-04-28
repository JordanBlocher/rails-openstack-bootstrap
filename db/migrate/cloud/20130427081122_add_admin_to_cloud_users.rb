class AddAdminToCloudUsers < ActiveRecord::Migration
  def self.up
    add_column :cloud_users, :admin, :boolean, :default => false
  end

  def self.down
    remove_column :cloud_users, :admin
  end
end
