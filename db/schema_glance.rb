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

  create_table "image_members", :force => true do |t|
    t.string   "image_id",   :limit => 36, :null => false
    t.string   "member",                   :null => false
    t.boolean  "can_share",                :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted",                  :null => false
  end

  add_index "image_members", ["deleted"], :name => "ix_image_members_deleted"
  add_index "image_members", ["image_id", "member"], :name => "image_id", :unique => true
  add_index "image_members", ["image_id", "member"], :name => "ix_image_members_image_id_member"
  add_index "image_members", ["image_id"], :name => "ix_image_members_image_id"

  create_table "image_properties", :force => true do |t|
    t.string   "image_id",   :limit => 36, :null => false
    t.string   "name",                     :null => false
    t.text     "value"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted",                  :null => false
  end

  add_index "image_properties", ["deleted"], :name => "ix_image_properties_deleted"
  add_index "image_properties", ["image_id", "name"], :name => "image_id", :unique => true
  add_index "image_properties", ["image_id", "name"], :name => "ix_image_properties_image_id_name", :unique => true
  add_index "image_properties", ["image_id"], :name => "ix_image_properties_image_id"

  create_table "images", :force => true do |t|
    t.string   "name"
    t.integer  "size",             :limit => 8
    t.string   "status",           :limit => 30, :null => false
    t.boolean  "is_public",                      :null => false
    t.text     "location"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "deleted",                        :null => false
    t.string   "disk_format",      :limit => 20
    t.string   "container_format", :limit => 20
    t.string   "checksum",         :limit => 32
    t.string   "owner"
    t.integer  "min_disk",                       :null => false
    t.integer  "min_ram",                        :null => false
    t.boolean  "protected"
  end

  add_index "images", ["deleted"], :name => "ix_images_deleted"
  add_index "images", ["is_public"], :name => "ix_images_is_public"

  create_table "migrate_version", :primary_key => "repository_id", :force => true do |t|
    t.text    "repository_path"
    t.integer "version"
  end

end
