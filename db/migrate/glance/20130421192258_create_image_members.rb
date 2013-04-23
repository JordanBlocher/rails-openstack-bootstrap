class CreateImageMembers < ActiveRecord::Migration
  def change
    create_table :image_members do |t|
      t.string :image_id
      t.string :member
      t.boolean :can_share
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted

      t.timestamps
    end
  end
end
