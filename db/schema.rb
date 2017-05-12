ActiveRecord::Schema.define(version: 20170512031913) do
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "name"
    t.integer  "unit"
    t.decimal  "price_per_unit"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "category_id"
    t.integer  "stock"
    t.index ["category_id"], name: "index_drugs_on_category_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.date     "date"
    t.decimal  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_payments_on_user_id", using: :btree
  end

  create_table "purchases", force: :cascade do |t|
    t.date     "date"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.decimal  "total"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_sales_on_user_id", using: :btree
  end

  create_table "sales_details", force: :cascade do |t|
    t.decimal  "price"
    t.integer  "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "drugs", "categories"
  add_foreign_key "payments", "users"
  add_foreign_key "sales", "users"
end
