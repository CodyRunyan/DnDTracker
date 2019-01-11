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

ActiveRecord::Schema.define(version: 20190111061626) do

  create_table "encounters", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "monster_id"
    t.integer "playercharacter_id"
    t.index ["monster_id"], name: "index_encounters_on_monster_id"
    t.index ["playercharacter_id"], name: "index_encounters_on_playercharacter_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "ac"
    t.string "hp"
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tags"
  end

  create_table "player_characters", force: :cascade do |t|
    t.string "character_name"
    t.string "player_name"
    t.string "ac"
    t.integer "hp"
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
