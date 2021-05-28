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
    t.integer "cell_01"
    t.integer "cell_02"
    t.integer "cell_03"
    t.integer "cell_04"
    t.integer "cell_05"
    t.integer "cell_06"
    t.integer "cell_07"
    t.integer "cell_08"
    t.integer "cell_09"
    t.integer "cell_10"
    t.integer "cell_11"
    t.integer "cell_12"
    t.integer "cell_13"
    t.integer "cell_14"
    t.integer "cell_15"
    t.integer "cell_16"
    t.integer "cell_17"
    t.integer "cell_18"
    t.integer "cell_19"
    t.integer "cell_20"
    t.integer "cell_21"
    t.integer "cell_22"
    t.integer "cell_23"
    t.integer "cell_24"
    t.integer "cell_25"
    t.integer "cell_26"
    t.integer "cell_27"
    t.integer "cell_28"
    t.integer "cell_29"
    t.integer "cell_30"
    t.integer "cell_31"
    t.integer "cell_32"
    t.integer "cell_33"
    t.integer "cell_34"
    t.integer "cell_35"
    t.integer "cell_36"
    t.integer "cell_37"
    t.integer "cell_38"
    t.integer "cell_39"
    t.integer "cell_40"
    t.integer "cell_41"
    t.integer "cell_42"
    t.integer "cell_43"
    t.integer "cell_44"
    t.integer "cell_45"
    t.integer "cell_46"
    t.integer "cell_47"
    t.integer "cell_48"
    t.integer "cell_49"
    t.integer "cell_50"
    t.integer "cell_51"
    t.integer "cell_52"
    t.integer "cell_53"
    t.integer "cell_54"
    t.integer "cell_55"
    t.integer "cell_56"
    t.integer "cell_57"
    t.integer "cell_58"
    t.integer "cell_59"
    t.integer "cell_60"
    t.integer "cell_61"
    t.integer "cell_62"
    t.integer "cell_63"
    t.integer "cell_64"
    t.integer "cell_65"
    t.integer "cell_66"
    t.integer "cell_67"
    t.integer "cell_68"
    t.integer "cell_69"
    t.integer "cell_70"
    t.integer "cell_71"
    t.integer "cell_72"
    t.integer "cell_73"
    t.integer "cell_74"
    t.integer "cell_75"
    t.integer "cell_76"
    t.integer "cell_77"
    t.integer "cell_78"
    t.integer "cell_79"
    t.integer "cell_80"
    t.integer "cell_81"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
