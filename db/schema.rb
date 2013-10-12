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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131011211931) do

  create_table "attachments", force: true do |t|
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.string   "type"
    t.string   "attached_file_name"
    t.string   "attached_content_type"
    t.integer  "attached_file_size"
    t.datetime "attached_updated_at"
    t.text     "description"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.integer  "waist_measurement"
    t.integer  "hip_measurement"
    t.integer  "thigh_measurement"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "pants", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "style"
    t.integer  "price_range"
    t.integer  "pant_type",                                   default: 1
    t.integer  "leg_cut"
    t.integer  "body_shape"
    t.integer  "rise"
    t.decimal  "exact_rise",         precision: 10, scale: 0
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.integer  "waist_fit"
    t.integer  "hip_fit"
    t.integer  "thigh_fit"
    t.integer  "rise"
    t.integer  "waist_measurement"
    t.integer  "hip_measurement"
    t.integer  "thigh_measurement"
    t.text     "content"
    t.integer  "pant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "store_links", force: true do |t|
    t.string   "name"
    t.string   "source"
    t.string   "url"
    t.integer  "pant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
