class CreateAggregates < ActiveRecord::Migration
  def change
    create_table :aggregates do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :name
      t.string :operational_state
      t.string :availability_zone

      t.timestamps
    end
  end
end
