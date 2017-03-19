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

ActiveRecord::Schema.define(version: 20170319172816) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id"
    t.text     "author_name"
    t.text     "author_email"
    t.text     "content"
    t.text     "author_ip"
    t.integer  "approved"
    t.integer  "parent_id"
    t.integer  "user_id"
    t.text     "updated_at",   null: false
    t.datetime "created_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "image_url"
    t.integer  "tag_id"
    t.integer  "author_id"
    t.datetime "published_at"
    t.datetime "created_at",   default: '2017-03-11 16:45:54', null: false
    t.datetime "last_edit_at"
    t.datetime "updated_at",                                   null: false
    t.boolean  "active"
    t.integer  "category_id"
  end

  create_table "posts_tags", force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nick_name"
    t.string   "activation_key"
    t.string   "status"
    t.boolean  "admin",                  default: false
    t.boolean  "moderator",              default: false
    t.datetime "created_at",             default: '2017-03-11 16:45:54', null: false
    t.datetime "updated_at",                                             null: false
    t.string   "email",                  default: "",                    null: false
    t.string   "encrypted_password",     default: "",                    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["activation_key"], name: "index_users_on_activation_key"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nick_name"], name: "index_users_on_nick_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
