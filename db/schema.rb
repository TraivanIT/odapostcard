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

ActiveRecord::Schema.define(version: 2018_12_27_013240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_items", force: :cascade do |t|
    t.integer "post_card_id"
    t.integer "order_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.float "subtotal"
    t.float "total"
    t.float "tax"
    t.float "shipping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_cards", force: :cascade do |t|
    t.string "post_card_name"
    t.float "post_card_price"
    t.text "post_card_description"
    t.string "post_card_code"
    t.text "post_card_thumb_image"
    t.text "post_card_image_one"
    t.text "post_card_image_two"
    t.text "post_card_image_three"
    t.text "post_card_image_four"
    t.text "post_card_image_five"
    t.bigint "traivan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["traivan_id"], name: "index_post_cards_on_traivan_id"
  end

  create_table "traivans", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "post_cards", "traivans"
end
