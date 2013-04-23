class CreateInstanceTypes < ActiveRecord::Migration
  def change
    create_table :instance_types do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :name
      t.integer :memory_mb
      t.integer :vcpus
      t.integer :swap
      t.integer :vcpu_weight
      t.string :flavorid
      t.float :rxtx_factor
      t.integer :root_gb
      t.integer :ephemeral_gb

      t.timestamps
    end
  end
end
