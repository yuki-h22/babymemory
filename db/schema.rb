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

ActiveRecord::Schema.define(version: 20191108074916) do

  create_table "group_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_users_on_group_id", using: :btree
    t.index ["user_id"], name: "index_group_users_on_user_id", using: :btree
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",          null: false
    t.string   "birthday",      null: false
    t.string   "image"
    t.string   "icon"
    t.string   "meimei"
    t.string   "mhug"
    t.string   "phug"
    t.string   "fphoto"
    t.string   "imhome"
    t.string   "finger"
    t.string   "bathing"
    t.string   "diapers"
    t.string   "hund"
    t.string   "walking"
    t.string   "bathingwith1"
    t.string   "sleepingface1"
    t.string   "discovery"
    t.string   "cream"
    t.string   "saycheese1"
    t.string   "neck"
    t.string   "bathingwith2"
    t.string   "get"
    t.string   "tooth"
    t.string   "roll"
    t.string   "babyfood"
    t.string   "brush"
    t.string   "sleepingface2"
    t.string   "saycheese2"
    t.string   "high"
    t.string   "mam"
    t.string   "high2"
    t.string   "looking"
    t.string   "sit"
    t.string   "stand"
    t.string   "high3"
    t.string   "straw"
    t.string   "sleepingface3"
    t.string   "saycheese3"
    t.string   "imitate"
    t.string   "go"
    t.string   "hair"
    t.string   "katikati"
    t.string   "follow"
    t.string   "pause"
    t.string   "walk"
    t.string   "yam"
    t.string   "sleepingface4"
    t.string   "saycheese4"
    t.string   "imitate2"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.string   "image"
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_messages_on_group_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["name"], name: "index_users_on_name", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "group_users", "groups"
  add_foreign_key "group_users", "users"
  add_foreign_key "messages", "groups"
end
