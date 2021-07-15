# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_05_064501) do

  create_table "carts", force: :cascade do |t|
    t.string "category_name"
    t.string "product_name"
    t.float "product_price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id"
    t.float "total_amount"
    t.float "sub_total"
    t.integer "user_id"
    t.float "gst_amount"
    t.float "grand_total"
    t.index ["product_id"], name: "index_carts_on_product_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "product_id", null: false
  end

  create_table "orderdetails", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.float "product_price"
    t.integer "quantity"
    t.float "total_amount"
    t.float "gst_amout"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "mobile"
    t.string "city"
    t.string "region"
    t.integer "user_id"
    t.string "product_name"
    t.index ["user_id"], name: "index_orderdetails_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "mobile"
    t.string "city"
    t.string "region"
    t.float "total_amount"
    t.integer "user_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_details", force: :cascade do |t|
    t.float "product_price"
    t.integer "quantity"
    t.float "total_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id"
    t.string "product_name"
    t.index ["product_id"], name: "index_product_details_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.float "product_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_type", default: 2
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
