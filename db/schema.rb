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

ActiveRecord::Schema.define(version: 2019_07_21_091219) do

  create_table "product_brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "parent_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["parent_id"], name: "index_product_brands_on_parent_id"
    t.index ["product_id"], name: "index_product_brands_on_product_id"
  end

  create_table "product_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "parent_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["parent_id"], name: "index_product_categories_on_parent_id"
    t.index ["product_id"], name: "index_product_categories_on_product_id"
  end

  create_table "product_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "size", null: false
    t.integer "condition", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["product_id"], name: "index_product_details_on_product_id"
  end

  create_table "product_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image", null: false
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["product_id"], name: "index_product_images_on_product_id"
    t.index ["user_id"], name: "index_product_images_on_user_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.text "prescription", null: false
    t.integer "profit", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "shippings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "shipping_charges", null: false
    t.string "delivery_source_area", null: false
    t.string "days_to_delivery", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["product_id"], name: "index_shippings_on_product_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "avatar"
    t.string "nickname", null: false
    t.text "self_introduction"
    t.integer "evaluation", null: false
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "family_name_kana", null: false
    t.string "first_name_kana", null: false
    t.date "data_of_birth", null: false
    t.string "how_to_pay", null: false
    t.string "gender", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "product_details", "products"
  add_foreign_key "product_images", "products"
  add_foreign_key "product_images", "users"
  add_foreign_key "products", "users"
  add_foreign_key "shippings", "products"
end
