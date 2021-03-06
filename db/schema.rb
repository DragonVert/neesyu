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

ActiveRecord::Schema.define(version: 20160906215049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "titre"
    t.text     "description"
    t.integer  "prix"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "debut"
    t.datetime "fin"
    t.string   "lieu"
    t.string   "adresse"
    t.string   "cp"
    t.string   "ville"
    t.string   "pays"
    t.string   "reduit"
    t.string   "contact"
    t.string   "transport"
    t.integer  "user_id"
    t.text     "search_text"
    t.string   "site"
    t.string   "complement"
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
  end

  create_table "interets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_interets_on_event_id", using: :btree
    t.index ["user_id"], name: "index_interets_on_user_id", using: :btree
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_participations_on_event_id", using: :btree
    t.index ["user_id"], name: "index_participations_on_user_id", using: :btree
  end

  create_table "profils", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "pseudo"
    t.text     "detail"
    t.string   "site"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "activite"
    t.text     "search_text"
    t.boolean  "pro"
    t.index ["user_id"], name: "index_profils_on_user_id", using: :btree
  end

  create_table "suivis", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "profil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profil_id"], name: "index_suivis_on_profil_id", using: :btree
    t.index ["user_id"], name: "index_suivis_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "events", "users"
  add_foreign_key "interets", "events"
  add_foreign_key "interets", "users"
  add_foreign_key "participations", "events"
  add_foreign_key "participations", "users"
  add_foreign_key "profils", "users"
  add_foreign_key "suivis", "profils"
  add_foreign_key "suivis", "users"
end
