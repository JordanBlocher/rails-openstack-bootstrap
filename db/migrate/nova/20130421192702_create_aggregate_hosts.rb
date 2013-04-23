class CreateAggregateHosts < ActiveRecord::Migration
  def change
    create_table :aggregate_hosts do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :host
      t.integer :aggregate_id

      t.timestamps
    end
  end
end
