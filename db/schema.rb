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

ActiveRecord::Schema.define(version: 20150723193717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "goal_cents"
    t.integer  "amount_donated_cents",           default: 0, null: false
    t.string   "account_type"
    t.integer  "state",                limit: 2
    t.integer  "featured"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "campaigns", ["featured"], name: "index_campaigns_on_featured", using: :btree
  add_index "campaigns", ["user_id"], name: "index_campaigns_on_user_id", using: :btree

  create_table "mfas", force: true do |t|
    t.integer "user_id"
    t.string  "nickname"
    t.string  "state"
    t.integer "wepay_mfa_id"
    t.string  "mfa_type"
  end

  create_table "payments", force: true do |t|
    t.integer  "campaign_id"
    t.integer  "payer_id"
    t.integer  "wepay_checkout_id",  limit: 8
    t.integer  "wepay_payment_id",   limit: 8
    t.integer  "amount_cents",                 default: 0, null: false
    t.integer  "app_fee_cents",                default: 0, null: false
    t.integer  "wepay_fee_cents",              default: 0, null: false
    t.string   "state"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "wepay_payment_type"
  end

  create_table "users", force: true do |t|
    t.string   "name",                         default: "", null: false
    t.string   "email",                        default: "", null: false
    t.string   "password_hash"
    t.string   "wepay_access_token"
    t.integer  "wepay_account_id",   limit: 8
    t.integer  "wepay_user_id",      limit: 8
    t.integer  "role",               limit: 2, default: 0,  null: false
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.boolean  "wants_MFA_enabled"
    t.string   "checkout_method"
  end

  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
