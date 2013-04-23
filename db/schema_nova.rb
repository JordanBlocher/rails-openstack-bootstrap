# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "agent_builds", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "hypervisor"
    t.string   "os"
    t.string   "architecture"
    t.string   "version"
    t.string   "url"
    t.string   "md5hash"
  end

  create_table "aggregate_hosts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "host"
    t.integer  "aggregate_id", :null => false
  end

  add_index "aggregate_hosts", ["aggregate_id"], :name => "aggregate_id"
  add_index "aggregate_hosts", ["host"], :name => "host", :unique => true

  create_table "aggregate_metadata", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "aggregate_id", :null => false
    t.string   "key",          :null => false
    t.string   "value",        :null => false
  end

  add_index "aggregate_metadata", ["aggregate_id"], :name => "aggregate_id"

  create_table "aggregates", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "name"
    t.string   "operational_state", :null => false
    t.string   "availability_zone", :null => false
  end

  add_index "aggregates", ["name"], :name => "name", :unique => true

  create_table "auth_tokens", :primary_key => "token_hash", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "user_id"
    t.string   "server_management_url"
    t.string   "storage_url"
    t.string   "cdn_management_url"
  end

  create_table "block_device_mapping", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "instance_id",                               :null => false
    t.string   "device_name",                               :null => false
    t.boolean  "delete_on_termination"
    t.string   "virtual_name"
    t.integer  "snapshot_id"
    t.integer  "volume_id"
    t.integer  "volume_size"
    t.boolean  "no_device"
    t.text     "connection_info",       :limit => 16777215
  end

  add_index "block_device_mapping", ["instance_id"], :name => "instance_id"
  add_index "block_device_mapping", ["snapshot_id"], :name => "snapshot_id"
  add_index "block_device_mapping", ["volume_id"], :name => "volume_id"

  create_table "bw_usage_cache", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.datetime "start_period",                :null => false
    t.datetime "last_refreshed"
    t.integer  "bw_in",          :limit => 8
    t.integer  "bw_out",         :limit => 8
    t.string   "mac"
  end

  create_table "cells", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "api_url"
    t.string   "username"
    t.string   "password"
    t.float    "weight_offset"
    t.float    "weight_scale"
    t.string   "name"
    t.boolean  "is_parent"
    t.string   "rpc_host"
    t.integer  "rpc_port"
    t.string   "rpc_virtual_host"
  end

  create_table "certificates", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "user_id"
    t.string   "project_id"
    t.string   "file_name"
  end

  create_table "compute_nodes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "service_id",                               :null => false
    t.integer  "vcpus",                                    :null => false
    t.integer  "memory_mb",                                :null => false
    t.integer  "local_gb",                                 :null => false
    t.integer  "vcpus_used",                               :null => false
    t.integer  "memory_mb_used",                           :null => false
    t.integer  "local_gb_used",                            :null => false
    t.text     "hypervisor_type",      :limit => 16777215, :null => false
    t.integer  "hypervisor_version",                       :null => false
    t.text     "cpu_info",             :limit => 16777215, :null => false
    t.integer  "disk_available_least"
    t.integer  "free_ram_mb"
    t.integer  "free_disk_gb"
    t.integer  "current_workload"
    t.integer  "running_vms"
    t.string   "hypervisor_hostname"
  end

  create_table "console_pools", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "address"
    t.string   "username"
    t.string   "password"
    t.string   "console_type"
    t.string   "public_hostname"
    t.string   "host"
    t.string   "compute_host"
  end

  create_table "consoles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "instance_name"
    t.integer  "instance_id"
    t.string   "password"
    t.integer  "port"
    t.integer  "pool_id"
  end

  add_index "consoles", ["pool_id"], :name => "pool_id"

  create_table "dns_domains", :primary_key => "domain", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "scope"
    t.string   "availability_zone"
    t.string   "project_id"
  end

  add_index "dns_domains", ["project_id"], :name => "project_id"

  create_table "fixed_ips", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "address"
    t.integer  "network_id"
    t.integer  "instance_id"
    t.boolean  "allocated"
    t.boolean  "leased"
    t.boolean  "reserved"
    t.integer  "virtual_interface_id"
    t.string   "host"
  end

  add_index "fixed_ips", ["instance_id"], :name => "instance_id"
  add_index "fixed_ips", ["network_id"], :name => "network_id"
  add_index "fixed_ips", ["virtual_interface_id"], :name => "fixed_ips_virtual_interface_id_fkey"

  create_table "floating_ips", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "address"
    t.integer  "fixed_ip_id"
    t.string   "project_id"
    t.string   "host"
    t.boolean  "auto_assigned"
    t.string   "pool"
    t.string   "interface"
  end

  add_index "floating_ips", ["fixed_ip_id"], :name => "fixed_ip_id"

  create_table "instance_actions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "action"
    t.text     "error",         :limit => 16777215
    t.string   "instance_uuid", :limit => 36
  end

  create_table "instance_faults", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "instance_uuid", :limit => 36
    t.integer  "code",                              :null => false
    t.string   "message"
    t.text     "details",       :limit => 16777215
  end

  create_table "instance_info_caches", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.text     "network_info", :limit => 16777215
    t.string   "instance_id",  :limit => 36,       :null => false
  end

  add_index "instance_info_caches", ["instance_id"], :name => "instance_id", :unique => true

  create_table "instance_metadata", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "instance_id", :null => false
    t.string   "key"
    t.string   "value"
  end

  add_index "instance_metadata", ["instance_id"], :name => "instance_id"

  create_table "instance_type_extra_specs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "instance_type_id", :null => false
    t.string   "key"
    t.string   "value"
  end

  add_index "instance_type_extra_specs", ["instance_type_id"], :name => "instance_type_id"

  create_table "instance_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "name"
    t.integer  "memory_mb",    :null => false
    t.integer  "vcpus",        :null => false
    t.integer  "swap",         :null => false
    t.integer  "vcpu_weight"
    t.string   "flavorid"
    t.float    "rxtx_factor"
    t.integer  "root_gb"
    t.integer  "ephemeral_gb"
  end

  create_table "instances", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "internal_id"
    t.string   "user_id"
    t.string   "project_id"
    t.string   "image_ref"
    t.string   "kernel_id"
    t.string   "ramdisk_id"
    t.string   "server_name"
    t.integer  "launch_index"
    t.string   "key_name"
    t.text     "key_data",                 :limit => 16777215
    t.integer  "power_state"
    t.string   "vm_state"
    t.integer  "memory_mb"
    t.integer  "vcpus"
    t.string   "hostname"
    t.string   "host"
    t.text     "user_data",                :limit => 16777215
    t.string   "reservation_id"
    t.datetime "scheduled_at"
    t.datetime "launched_at"
    t.datetime "terminated_at"
    t.string   "display_name"
    t.string   "display_description"
    t.string   "availability_zone"
    t.boolean  "locked"
    t.string   "os_type"
    t.text     "launched_on",              :limit => 16777215
    t.integer  "instance_type_id"
    t.string   "vm_mode"
    t.string   "uuid",                     :limit => 36
    t.string   "architecture"
    t.string   "root_device_name"
    t.string   "access_ip_v4"
    t.string   "access_ip_v6"
    t.string   "config_drive"
    t.string   "task_state"
    t.string   "default_ephemeral_device"
    t.string   "default_swap_device"
    t.integer  "progress"
    t.boolean  "auto_disk_config"
    t.boolean  "shutdown_terminate"
    t.boolean  "disable_terminate"
    t.integer  "root_gb"
    t.integer  "ephemeral_gb"
    t.string   "cell_name"
  end

  add_index "instances", ["project_id"], :name => "project_id"
  add_index "instances", ["uuid"], :name => "uuid", :unique => true

  create_table "iscsi_targets", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "target_num"
    t.string   "host"
    t.integer  "volume_id"
  end

  add_index "iscsi_targets", ["volume_id"], :name => "volume_id"

  create_table "key_pairs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "name"
    t.string   "user_id"
    t.string   "fingerprint"
    t.text     "public_key",  :limit => 16777215
  end

  create_table "migrate_version", :primary_key => "repository_id", :force => true do |t|
    t.text    "repository_path", :limit => 16777215
    t.integer "version"
  end

  create_table "migrations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "source_compute"
    t.string   "dest_compute"
    t.string   "dest_host"
    t.string   "status"
    t.string   "instance_uuid"
    t.integer  "old_instance_type_id"
    t.integer  "new_instance_type_id"
  end

  create_table "networks", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.boolean  "injected"
    t.string   "cidr"
    t.string   "netmask"
    t.string   "bridge"
    t.string   "gateway"
    t.string   "broadcast"
    t.string   "dns1"
    t.integer  "vlan"
    t.string   "vpn_public_address"
    t.integer  "vpn_public_port"
    t.string   "vpn_private_address"
    t.string   "dhcp_start"
    t.string   "project_id"
    t.string   "host"
    t.string   "cidr_v6"
    t.string   "gateway_v6"
    t.string   "label"
    t.string   "netmask_v6"
    t.string   "bridge_interface"
    t.boolean  "multi_host"
    t.string   "dns2"
    t.string   "uuid",                :limit => 36
    t.integer  "priority"
    t.integer  "rxtx_base"
  end

  create_table "projects", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "name"
    t.string   "description"
    t.string   "project_manager"
  end

  add_index "projects", ["project_manager"], :name => "project_manager"

  create_table "provider_fw_rules", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "protocol",   :limit => 5
    t.integer  "from_port"
    t.integer  "to_port"
    t.string   "cidr"
  end

  create_table "quotas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "project_id"
    t.string   "resource",   :null => false
    t.integer  "hard_limit"
  end

  create_table "s3_images", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "uuid",       :limit => 36, :null => false
  end

  create_table "security_group_instance_association", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "security_group_id"
    t.integer  "instance_id"
  end

  add_index "security_group_instance_association", ["instance_id"], :name => "instance_id"
  add_index "security_group_instance_association", ["security_group_id"], :name => "security_group_id"

  create_table "security_group_rules", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "parent_group_id"
    t.string   "protocol"
    t.integer  "from_port"
    t.integer  "to_port"
    t.string   "cidr"
    t.integer  "group_id"
  end

  add_index "security_group_rules", ["group_id"], :name => "group_id"
  add_index "security_group_rules", ["parent_group_id"], :name => "parent_group_id"

  create_table "security_groups", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "name"
    t.string   "description"
    t.string   "user_id"
    t.string   "project_id"
  end

  create_table "services", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "host"
    t.string   "binary"
    t.string   "topic"
    t.integer  "report_count",      :null => false
    t.boolean  "disabled"
    t.string   "availability_zone"
  end

  create_table "sm_backend_config", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "flavor_id",                     :null => false
    t.string   "sr_uuid"
    t.string   "sr_type"
    t.string   "config_params", :limit => 2047
  end

  add_index "sm_backend_config", ["flavor_id"], :name => "flavor_id"

  create_table "sm_flavors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "label"
    t.string   "description"
  end

  create_table "sm_volume", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "backend_id", :null => false
    t.string   "vdi_uuid"
  end

  add_index "sm_volume", ["backend_id"], :name => "backend_id"

  create_table "snapshots", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "volume_id",           :null => false
    t.string   "user_id"
    t.string   "project_id"
    t.string   "status"
    t.string   "progress"
    t.integer  "volume_size"
    t.datetime "scheduled_at"
    t.string   "display_name"
    t.string   "display_description"
  end

  create_table "user_project_association", :id => false, :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "user_id",    :null => false
    t.string   "project_id", :null => false
  end

  add_index "user_project_association", ["project_id"], :name => "project_id"

  create_table "user_project_role_association", :id => false, :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "user_id",    :null => false
    t.string   "project_id", :null => false
    t.string   "role",       :null => false
  end

  create_table "user_role_association", :id => false, :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "user_id",    :null => false
    t.string   "role",       :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "name"
    t.string   "access_key"
    t.string   "secret_key"
    t.boolean  "is_admin"
  end

  create_table "virtual_interfaces", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "address"
    t.integer  "network_id"
    t.integer  "instance_id",               :null => false
    t.string   "uuid",        :limit => 36
  end

  add_index "virtual_interfaces", ["address"], :name => "address", :unique => true
  add_index "virtual_interfaces", ["instance_id"], :name => "instance_id"
  add_index "virtual_interfaces", ["network_id"], :name => "network_id"

  create_table "virtual_storage_arrays", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "display_name"
    t.string   "display_description"
    t.string   "project_id"
    t.string   "availability_zone"
    t.integer  "instance_type_id",    :null => false
    t.string   "image_ref"
    t.integer  "vc_count",            :null => false
    t.integer  "vol_count",           :null => false
    t.string   "status"
  end

  create_table "volume_metadata", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "volume_id",  :null => false
    t.string   "key"
    t.string   "value"
  end

  add_index "volume_metadata", ["volume_id"], :name => "volume_id"

  create_table "volume_type_extra_specs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.integer  "volume_type_id", :null => false
    t.string   "key"
    t.string   "value"
  end

  add_index "volume_type_extra_specs", ["volume_type_id"], :name => "volume_type_id"

  create_table "volume_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "name"
  end

  create_table "volumes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "ec2_id"
    t.string   "user_id"
    t.string   "project_id"
    t.string   "host"
    t.integer  "size"
    t.string   "availability_zone"
    t.integer  "instance_id"
    t.string   "mountpoint"
    t.string   "attach_time"
    t.string   "status"
    t.string   "attach_status"
    t.datetime "scheduled_at"
    t.datetime "launched_at"
    t.datetime "terminated_at"
    t.string   "display_name"
    t.string   "display_description"
    t.string   "provider_location",   :limit => 256
    t.string   "provider_auth",       :limit => 256
    t.integer  "snapshot_id"
    t.integer  "volume_type_id"
  end

  add_index "volumes", ["instance_id"], :name => "instance_id"

end
