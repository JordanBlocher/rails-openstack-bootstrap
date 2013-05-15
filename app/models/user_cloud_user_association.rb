class UserCloudUserAssociation < ActiveRecord::Base
  attr_accessible :cloud_user_id, :created_at, :deleted, :deleted_at, :is_cloud_admin, :is_openstack_admin, :role, :updated_at, :user_id

  belongs_to :user, :polymorphic => true
  belongs_to :cloud_user, :polymorphic => true
end
