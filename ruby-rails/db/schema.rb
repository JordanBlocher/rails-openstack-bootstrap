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

ActiveRecord::Schema.define(:version => 20130516062504) do

  create_table "Admin", :force => true do |t|
    t.datetime "updated_at"
    t.boolean  "status"
    t.string   "admin"
    t.string   "admin_ip"
  end

  create_table "Jordan", :force => true do |t|
    t.datetime "updated_at"
    t.boolean  "status"
    t.string   "admin"
    t.string   "admin_ip"
  end

  create_table "cloud_users", :force => true do |t|
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  :default => false
    t.string   "name"
    t.string   "username"
  end

  add_index "cloud_users", ["email"], :name => "index_cloud_users_on_email", :unique => true
  add_index "cloud_users", ["reset_password_token"], :name => "index_cloud_users_on_reset_password_token", :unique => true

  create_table "user_cloud_user_associations", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.datetime "deleted_at"
    t.boolean  "deleted"
    t.string   "user_id"
    t.string   "cloud_user_id"
    t.string   "role"
    t.boolean  "is_openstack_admin"
    t.boolean  "is_cloud_admin"
  end

  create_table "virtual_interface_cloud_user_associations", :force => true do |t|
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "cloud_username"
    t.integer  "virtual_interface_id"
    t.string   "shared_ip"
    t.datetime "deleted_at"
  end

end
