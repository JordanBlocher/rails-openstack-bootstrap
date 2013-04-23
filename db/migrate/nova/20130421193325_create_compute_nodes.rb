class CreateComputeNodes < ActiveRecord::Migration
  def change
    create_table :compute_nodes do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
      t.boolean :deleted
      t.integer :service_id
      t.integer :vcpus
      t.integer :memory_mb
      t.integer :local_gb
      t.integer :vcpus_used
      t.integer :memory_mb_used
      t.integer :local_gb_used
      t.text :hypervisor_type
      t.integer :hypervisor_version
      t.text :cpu_info
      t.integer :disk_available_least
      t.integer :free_ram_mb
      t.integer :free_disk_gb
      t.integer :current_workload
      t.integer :running_vms
      t.string :hypervisor_hostname

      t.timestamps
    end
  end
end
