class CreateSmBackendConfigs < ActiveRecord::Migration
  def change
    create_table :sm_backend_configs do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :flavor_id
      t.string :sr_uuid
      t.string :sr_type
      t.string :config_params

      t.timestamps
    end
  end
end
