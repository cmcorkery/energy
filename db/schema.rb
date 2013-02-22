# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130221204351) do

  create_table "foos", :force => true do |t|
    t.datetime "month"
    t.decimal  "data1"
    t.decimal  "data2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prices", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "usage_id"
    t.decimal  "elec"
    t.decimal  "gas"
    t.decimal  "chp_elec"
    t.decimal  "biomass"
    t.decimal  "wind"
    t.decimal  "solar"
  end

  create_table "tests", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usages", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "month"
    t.decimal  "elec"
    t.decimal  "gas"
    t.decimal  "chp_elec"
    t.decimal  "biomass"
    t.decimal  "wind"
    t.decimal  "solar"
  end

end
