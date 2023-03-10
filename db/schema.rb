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

ActiveRecord::Schema[7.0].define(version: 2023_03_10_144630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_chatrooms_on_patient_id"
  end

  create_table "consultations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.boolean "ald"
    t.string "title"
    t.index ["patient_id"], name: "index_consultations_on_patient_id"
    t.index ["user_id"], name: "index_consultations_on_user_id"
  end

  create_table "daily_takes", force: :cascade do |t|
    t.string "day"
    t.string "day_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_procedures", force: :cascade do |t|
    t.string "content"
    t.bigint "prescription_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prescription_id"], name: "index_medical_procedures_on_prescription_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "nr"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.string "social_security_number"
    t.string "pathology"
    t.float "height"
    t.float "weight"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescription_daily_takes", force: :cascade do |t|
    t.bigint "daily_take_id", null: false
    t.bigint "prescription_medicine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_take_id"], name: "index_prescription_daily_takes_on_daily_take_id"
    t.index ["prescription_medicine_id"], name: "index_prescription_daily_takes_on_prescription_medicine_id"
  end

  create_table "prescription_medicines", force: :cascade do |t|
    t.integer "duration"
    t.string "dosage"
    t.bigint "prescription_id", null: false
    t.bigint "medicine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_prescription_medicines_on_medicine_id"
    t.index ["prescription_id"], name: "index_prescription_medicines_on_prescription_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.bigint "consultation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consultation_id"], name: "index_prescriptions_on_consultation_id"
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
    t.string "speciality"
    t.string "authentification_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "chatrooms", "patients"
  add_foreign_key "consultations", "patients"
  add_foreign_key "consultations", "users"
  add_foreign_key "medical_procedures", "prescriptions"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "prescription_daily_takes", "daily_takes"
  add_foreign_key "prescription_daily_takes", "prescription_medicines"
  add_foreign_key "prescription_medicines", "medicines"
  add_foreign_key "prescription_medicines", "prescriptions"
  add_foreign_key "prescriptions", "consultations"
end
