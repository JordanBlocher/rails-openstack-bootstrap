class CreateImageProperties < ActiveRecord::Migration
  def change
    create_table :image_properties do |t|
      t.string :image_id
      t.string :name
      t.text :value
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted

      t.timestamps
    end
  end
end
