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

ActiveRecord::Schema[7.0].define(version: 2022_06_15_131306) do
  create_table "attributs", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.string "datas"
    t.integer "collecteid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collectes", force: :cascade do |t|
    t.string "date"
    t.string "assos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indicateurs", force: :cascade do |t|
    t.string "nom"
    t.string "description"
    t.string "donnees"
    t.integer "collecteparente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
