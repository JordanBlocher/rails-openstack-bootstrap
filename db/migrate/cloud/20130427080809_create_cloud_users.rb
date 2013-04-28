class CreateCloudUsers < ActiveRecord::Migration
  def change
    create_table :cloud_users do |t|

      t.timestamps
    end
  end
end
