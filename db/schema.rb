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

ActiveRecord::Schema.define(version: 2021_11_20_182511) do

  create_table "articles", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "texto"
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_articles_on_category_id"
  end

  create_table "attacks", force: :cascade do |t|
    t.string "nombre"
    t.string "informacion"
    t.integer "article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_attacks_on_article_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "extra_infos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "texto"
    t.integer "extra_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["extra_id"], name: "index_extra_infos_on_extra_id"
  end

  create_table "extras", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "information", force: :cascade do |t|
    t.string "tipo"
    t.string "nombre"
    t.string "introduccion"
    t.string "informacion"
    t.integer "attack_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attack_id"], name: "index_information_on_attack_id"
  end

  add_foreign_key "articles", "categories"
  add_foreign_key "attacks", "articles"
  add_foreign_key "extra_infos", "extras"
  add_foreign_key "information", "attacks"
end
