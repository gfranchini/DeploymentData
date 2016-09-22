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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160922143922) do

  create_table "architectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "form_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "diagram_file_name"
    t.string   "diagram_content_type"
    t.integer  "diagram_file_size"
    t.datetime "diagram_updated_at"
    t.text     "description",          limit: 65535
    t.index ["form_id"], name: "index_architectures_on_form_id", using: :btree
  end

  create_table "forms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "server_environment"
    t.string   "server_location"
    t.string   "server_purpose"
    t.string   "application_name"
    t.string   "server_accessibility"
    t.text     "application_description", limit: 65535
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_forms_on_user_id", using: :btree
  end

  create_table "load_balancers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "ip_address"
    t.string   "points_to"
    t.string   "ports"
    t.string   "ssl_location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "form_id"
    t.index ["form_id"], name: "index_load_balancers_on_form_id", using: :btree
  end

  create_table "servers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "host_name"
    t.string   "ip_address"
    t.string   "operating_system"
    t.integer  "cpu_cores"
    t.integer  "memory"
    t.integer  "disk_space"
    t.integer  "form_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["form_id"], name: "index_servers_on_form_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "architectures", "forms"
  add_foreign_key "forms", "users"
  add_foreign_key "load_balancers", "forms"
  add_foreign_key "servers", "forms"
end
