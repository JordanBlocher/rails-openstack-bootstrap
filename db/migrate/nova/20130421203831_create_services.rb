class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :host
      t.string :binary
      t.string :topic
      t.integer :report_count
      t.boolean :disabled
      t.string :availability_zone

      t.timestamps
    end
  end
end
