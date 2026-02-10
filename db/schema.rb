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

ActiveRecord::Schema[7.1].define(version: 2026_02_10_183451) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness"
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", precision: nil, null: false

    t.unique_constraint ["key"], name: "active_storage_blobs_key_key"
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness"
    t.unique_constraint ["blob_id", "variation_digest"], name: "active_storage_variant_records_blob_id_variation_digest_key"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "content"
    t.boolean "published"
    t.datetime "published_at"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "excerpt"
    t.string "author"
    t.string "image_path"
    t.string "category"
    t.boolean "featured", default: false
    t.integer "country", default: 0, null: false
    t.index ["category"], name: "index_articles_on_category"
    t.index ["country"], name: "index_articles_on_country"
    t.index ["featured"], name: "index_articles_on_featured"
    t.index ["published"], name: "index_articles_on_published"
    t.index ["slug"], name: "index_articles_on_slug", unique: true
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name", null: false
    t.integer "country", default: 0, null: false
    t.string "city"
    t.text "bio"
    t.integer "position", default: 0
    t.boolean "featured", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_path"
    t.index ["country"], name: "index_candidates_on_country"
    t.index ["featured"], name: "index_candidates_on_featured"
    t.index ["position"], name: "index_candidates_on_position"
  end

  create_table "survey_responses", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "gender"
    t.string "postal_code", null: false
    t.string "city", null: false
    t.string "age_range", null: false
    t.string "years_in_belgium", null: false
    t.string "professional_status"
    t.string "employer_type"
    t.string "children_schooling"
    t.string "french_admin_rating", null: false
    t.string "belgian_admin_rating", null: false
    t.text "administrative_difficulties"
    t.string "electoral_registration", null: false
    t.boolean "contacted_elected", default: false
    t.text "interests"
    t.text "comments"
    t.boolean "consent", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.index ["created_at"], name: "index_survey_responses_on_created_at"
    t.index ["email"], name: "index_survey_responses_on_email"
    t.index ["postal_code"], name: "index_survey_responses_on_postal_code"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id", name: "active_storage_attachments_blob_id_fkey"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id", name: "active_storage_variant_records_blob_id_fkey"
  add_foreign_key "articles", "users"
end
