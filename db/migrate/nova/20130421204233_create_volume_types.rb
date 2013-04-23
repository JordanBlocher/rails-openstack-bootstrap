class CreateVolumeTypes < ActiveRecord::Migration
  def change
    create_table :volume_types do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :name

      t.timestamps
    end
  end
end
