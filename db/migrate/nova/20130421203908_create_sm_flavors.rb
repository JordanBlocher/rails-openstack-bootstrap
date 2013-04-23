class CreateSmFlavors < ActiveRecord::Migration
  def change
    create_table :sm_flavors do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :label
      t.string :description

      t.timestamps
    end
  end
end
