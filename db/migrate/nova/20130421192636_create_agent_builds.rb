class CreateAgentBuilds < ActiveRecord::Migration
  def change
    create_table :agent_builds do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :hypervisor
      t.string :os
      t.string :architecture
      t.string :version
      t.string :url
      t.string :md5hash

      t.timestamps
    end
  end
end
