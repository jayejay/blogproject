# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_227_151_138) do
  create_table 'action_text_rich_texts', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'body'
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[record_type record_id name], name: 'index_action_text_rich_texts_uniqueness', unique: true
  end

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.integer 'record_id', null: false
    t.integer 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.integer 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.string 'background_color'
    t.string 'title_color'
  end

  create_table 'comments', force: :cascade do |t|
    t.integer 'post_id'
    t.text 'author_name'
    t.text 'author_email'
    t.text 'content'
    t.text 'author_ip'
    t.integer 'approved'
    t.integer 'parent_id'
    t.integer 'user_id'
    t.text 'updated_at', null: false
    t.datetime 'created_at'
  end

  create_table 'images', force: :cascade do |t|
    t.string 'alt'
    t.string 'hint'
    t.string 'file'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'title'
    t.string 'content'
    t.integer 'tag_id'
    t.integer 'user_id'
    t.datetime 'published_at'
    t.datetime 'created_at', default: '2017-03-11 16:45:54', null: false
    t.datetime 'last_edit_at'
    t.datetime 'updated_at', null: false
    t.boolean 'active'
    t.integer 'category_id'
  end

  create_table 'posts_tags', force: :cascade do |t|
    t.integer 'post_id'
    t.integer 'tag_id'
  end

  create_table 'ratings', force: :cascade do |t|
    t.integer 'post_id'
    t.integer 'gameplay'
    t.integer 'graphics'
    t.integer 'sound'
    t.integer 'price_performance'
    t.integer 'total'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'innovation'
  end

  create_table 'tags', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'color'
    t.string 'text_color'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'nick_name'
    t.string 'activation_key'
    t.string 'status'
    t.boolean 'admin', default: false
    t.boolean 'moderator', default: false
    t.datetime 'created_at', default: '2017-03-11 16:45:54', null: false
    t.datetime 'updated_at', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'text_color'
    t.string 'description'
    t.string 'function'
    t.index ['activation_key'], name: 'index_users_on_activation_key'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['nick_name'], name: 'index_users_on_nick_name'
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
end
