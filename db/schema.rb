# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100402172733) do

  create_table "animals", :force => true do |t|
    t.integer  "certificate_id", :null => false
    t.integer  "national_id"
    t.string   "alternate_tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certificates", :force => true do |t|
    t.string   "consignor"
    t.string   "consignee"
    t.datetime "date_of_issue"
    t.string   "state_of_origin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "animalcount"
  end

end
