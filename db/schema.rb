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

ActiveRecord::Schema.define(version: 2023_06_18_011843) do

  create_table "cart_product", force: :cascade do |t|
    t.integer "product_id"
    t.integer "cart_id"
    t.integer "qty"
  end

  create_table "product", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.string "color"
    t.string "size"
    t.string "type"
    t.integer "price"
    t.integer "product_category_id"
  end

  create_table "product_category", force: :cascade do |t|
    t.string "name"
    t.string "desc"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "product_id"
    t.string "name"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shopping_cart", force: :cascade do |t|
    t.integer "total"
  end

end
