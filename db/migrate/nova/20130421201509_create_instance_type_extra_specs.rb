class CreateInstanceTypeExtraSpecs < ActiveRecord::Migration
  def change
    create_table :instance_type_extra_specs do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :instance_type_id
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
