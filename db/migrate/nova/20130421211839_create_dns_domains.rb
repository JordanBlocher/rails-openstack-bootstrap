class CreateDnsDomains < ActiveRecord::Migration
  def self.up
    create_table :dns_domains, {:id => false}  do |t|
      t.string :domain
      t.datetime :created_at
      t.datetime :updated_at 
      t.datetime :deleted_at
      t.boolean :deleted
      t.string :scope
      t.string :availability_zone
      t.string :project_id

      t.timestamps
    end
    execute "ALTER TABLE dns_domains ADD PRIMARY KEY (domain);"
  end

  def self.down
    drop_table :dns_domains
  end
end
