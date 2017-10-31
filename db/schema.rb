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

ActiveRecord::Schema.define(version: 20170424213903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "passengerride_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["passengerride_id"], name: "index_comments_on_passengerride_id", using: :btree
  end

  create_table "commonts", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "driverride_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["driverride_id"], name: "index_commonts_on_driverride_id", using: :btree
  end

  create_table "driverrides", force: :cascade do |t|
    t.string   "name"
    t.integer  "rent"
    t.integer  "contract"
    t.integer  "bedroom"
    t.integer  "bathroom"
    t.integer  "kitchen"
    t.boolean  "swimmingpool"
    t.boolean  "elevator"
    t.boolean  "parking"
    t.boolean  "security"
    t.boolean  "balcony"
    t.boolean  "gym"
    t.boolean  "kids"
    t.integer  "area"
    t.text     "address"
    t.boolean  "eleven"
    t.boolean  "bigc"
    t.boolean  "familymart"
    t.boolean  "tesco"
    t.boolean  "tops"
    t.boolean  "lawson"
    t.boolean  "makro"
    t.text     "additionalinfo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_driverrides_on_user_id", using: :btree
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.string  "unsubscriber_type"
    t.integer "unsubscriber_id"
    t.integer "conversation_id"
    t.index ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id", using: :btree
    t.index ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type", using: :btree
  end

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.string   "sender_type"
    t.integer  "sender_id"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.string   "notified_object_type"
    t.integer  "notified_object_id"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
    t.index ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id", using: :btree
    t.index ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type", using: :btree
    t.index ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type", using: :btree
    t.index ["type"], name: "index_mailboxer_notifications_on_type", using: :btree
  end

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.string   "receiver_type"
    t.integer  "receiver_id"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.boolean  "is_delivered",               default: false
    t.string   "delivery_method"
    t.string   "message_id"
    t.index ["notification_id"], name: "index_mailboxer_receipts_on_notification_id", using: :btree
    t.index ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type", using: :btree
  end

  create_table "passengerrides", force: :cascade do |t|
    t.string   "vehicle"
    t.string   "title"
    t.string   "fuel"
    t.integer  "seats"
    t.string   "model"
    t.integer  "rent"
    t.integer  "mileage"
    t.boolean  "ac"
    t.boolean  "tv"
    t.boolean  "music"
    t.boolean  "auxcable"
    t.boolean  "bluetooth"
    t.boolean  "navigation"
    t.boolean  "rearbackupcamera"
    t.boolean  "pets"
    t.boolean  "drinking"
    t.boolean  "eating"
    t.boolean  "smoking"
    t.text     "additionalinfo"
    t.text     "pickup"
    t.boolean  "userlocation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_passengerrides_on_user_id", using: :btree
  end

  create_table "post_attachments", force: :cascade do |t|
    t.integer  "driverride_id"
    t.string   "avatar"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "requestfordms", force: :cascade do |t|
    t.integer  "driverride_id"
    t.integer  "customer_id"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["customer_id"], name: "index_requestfordms_on_customer_id", using: :btree
    t.index ["driverride_id"], name: "index_requestfordms_on_driverride_id", using: :btree
  end

  create_table "requestforpms", force: :cascade do |t|
    t.integer  "passengerride_id"
    t.integer  "customer_id"
    t.string   "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["customer_id"], name: "index_requestforpms_on_customer_id", using: :btree
    t.index ["passengerride_id"], name: "index_requestforpms_on_passengerride_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  create_table "vehicle_attachments", force: :cascade do |t|
    t.integer  "passengerride_id"
    t.string   "avatar"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "comments", "passengerrides"
  add_foreign_key "commonts", "driverrides"
  add_foreign_key "driverrides", "users"
  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "passengerrides", "users"
  add_foreign_key "users", "roles"
end
