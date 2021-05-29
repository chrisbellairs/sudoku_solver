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

ActiveRecord::Schema.define(version: 2021_05_28_091714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "puzzles", force: :cascade do |t|
    t.integer "cell_01", default: 0
    t.integer "cell_02", default: 0
    t.integer "cell_03", default: 0
    t.integer "cell_04", default: 0
    t.integer "cell_05", default: 0
    t.integer "cell_06", default: 0
    t.integer "cell_07", default: 0
    t.integer "cell_08", default: 0
    t.integer "cell_09", default: 0
    t.integer "cell_10", default: 0
    t.integer "cell_11", default: 0
    t.integer "cell_12", default: 0
    t.integer "cell_13", default: 0
    t.integer "cell_14", default: 0
    t.integer "cell_15", default: 0
    t.integer "cell_16", default: 0
    t.integer "cell_17", default: 0
    t.integer "cell_18", default: 0
    t.integer "cell_19", default: 0
    t.integer "cell_20", default: 0
    t.integer "cell_21", default: 0
    t.integer "cell_22", default: 0
    t.integer "cell_23", default: 0
    t.integer "cell_24", default: 0
    t.integer "cell_25", default: 0
    t.integer "cell_26", default: 0
    t.integer "cell_27", default: 0
    t.integer "cell_28", default: 0
    t.integer "cell_29", default: 0
    t.integer "cell_30", default: 0
    t.integer "cell_31", default: 0
    t.integer "cell_32", default: 0
    t.integer "cell_33", default: 0
    t.integer "cell_34", default: 0
    t.integer "cell_35", default: 0
    t.integer "cell_36", default: 0
    t.integer "cell_37", default: 0
    t.integer "cell_38", default: 0
    t.integer "cell_39", default: 0
    t.integer "cell_40", default: 0
    t.integer "cell_41", default: 0
    t.integer "cell_42", default: 0
    t.integer "cell_43", default: 0
    t.integer "cell_44", default: 0
    t.integer "cell_45", default: 0
    t.integer "cell_46", default: 0
    t.integer "cell_47", default: 0
    t.integer "cell_48", default: 0
    t.integer "cell_49", default: 0
    t.integer "cell_50", default: 0
    t.integer "cell_51", default: 0
    t.integer "cell_52", default: 0
    t.integer "cell_53", default: 0
    t.integer "cell_54", default: 0
    t.integer "cell_55", default: 0
    t.integer "cell_56", default: 0
    t.integer "cell_57", default: 0
    t.integer "cell_58", default: 0
    t.integer "cell_59", default: 0
    t.integer "cell_60", default: 0
    t.integer "cell_61", default: 0
    t.integer "cell_62", default: 0
    t.integer "cell_63", default: 0
    t.integer "cell_64", default: 0
    t.integer "cell_65", default: 0
    t.integer "cell_66", default: 0
    t.integer "cell_67", default: 0
    t.integer "cell_68", default: 0
    t.integer "cell_69", default: 0
    t.integer "cell_70", default: 0
    t.integer "cell_71", default: 0
    t.integer "cell_72", default: 0
    t.integer "cell_73", default: 0
    t.integer "cell_74", default: 0
    t.integer "cell_75", default: 0
    t.integer "cell_76", default: 0
    t.integer "cell_77", default: 0
    t.integer "cell_78", default: 0
    t.integer "cell_79", default: 0
    t.integer "cell_80", default: 0
    t.integer "cell_81", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
