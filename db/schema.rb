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

ActiveRecord::Schema.define(version: 2019_08_04_085952) do

  create_table "product_brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "parent_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "ancestry"
    t.index ["ancestry"], name: "index_product_categories_on_ancestry"
  end

  create_table "product_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image", null: false
    t.bigint "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["product_id"], name: "index_product_images_on_product_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.integer "size_id"
    t.integer "condition_id", null: false
    t.integer "price", null: false
    t.bigint "product_category_id"
    t.integer "delivery_responsibility", null: false
    t.integer "delivery_method", null: false
    t.integer "delivery_area", null: false
    t.integer "delivery_day", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "seller_id"
    t.integer "buyer_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
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
    t.text "avatar"
    t.string "nickname", null: false
    t.text "self_introduction"
    t.integer "evaluation"
    t.string "family_name"
    t.string "first_name"
    t.string "family_name_kana"
    t.string "first_name_kana"
    t.string "how_to_pay"
    t.string "gender"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "shippings", "products"
end
