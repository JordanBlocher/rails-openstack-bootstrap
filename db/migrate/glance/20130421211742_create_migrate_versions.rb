class CreateMigrateVersions < ActiveRecord::Migration
  def self.up
    create_table :migrate_versions, {:id => false} do |t|
      t.column :repository_id, "varchar(50)", :null => false
      t.text :repository_path
      t.integer :version

      t.timestamps
    end
    execute "ALTER TABLE migrate_versions ADD PRIMARY KEY (repository_id);"
  end

  def self.down
    drop_table :migrate_versions
  end
end
