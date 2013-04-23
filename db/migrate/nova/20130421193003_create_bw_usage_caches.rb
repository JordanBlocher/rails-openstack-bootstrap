class CreateBwUsageCaches < ActiveRecord::Migration
  def change
    create_table :bw_usage_caches do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.datetime :start_period
      t.datetime :last_refreshed
      t.integer :bw_in
      t.integer :bw_out
      t.string :mac

      t.timestamps
    end
  end
end
