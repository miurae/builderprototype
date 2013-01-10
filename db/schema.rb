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

ActiveRecord::Schema.define(:version => 20130108015621) do

  create_table "applications", :force => true do |t|
    t.string   "name"
    t.string   "module"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patternlinks", :force => true do |t|
    t.string   "pattern"
    t.string   "active_task"
    t.string   "passive_task"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "patterns", :force => true do |t|
    t.string   "name"
    t.string   "patterntype"
    t.string   "event"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "storylinks", :force => true do |t|
    t.string   "story"
    t.string   "pattern"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasklinks", :force => true do |t|
    t.string   "task"
    t.string   "application"
    t.string   "input_data"
    t.string   "output_data"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
