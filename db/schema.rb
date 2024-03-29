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

ActiveRecord::Schema[7.0].define(version: 2023_02_20_064125) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meal_recipes", force: :cascade do |t|
    t.string "name"
    t.bigint "meal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_meal_recipes_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "ingredients"
  end

  create_table "recipe_origins", force: :cascade do |t|
    t.string "name"
    t.bigint "meal_recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_recipe_id"], name: "index_recipe_origins_on_meal_recipe_id"
  end

  add_foreign_key "meal_recipes", "meals"
  add_foreign_key "recipe_origins", "meal_recipes"
end
