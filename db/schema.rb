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

ActiveRecord::Schema.define(:version => 20111001195318) do

  create_table "images", :force => true do |t|
    t.string   "filename"
    t.boolean  "is_template"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "width"
    t.integer  "height"
  end

  create_table "testspots", :force => true do |t|
    t.integer   "image_id",        :null => false
    t.timestamp "timestamp",       :null => false
    t.float     "rect_x",          :null => false
    t.float     "rect_y",          :null => false
    t.float     "rect_width",      :null => false
    t.float     "rect_height",     :null => false
    t.boolean   "circle_detected", :null => false
    t.float     "circle_x",        :null => false
    t.float     "circle_y",        :null => false
    t.float     "circle_radius",   :null => false
    t.float     "mean",            :null => false
    t.float     "std_dev",         :null => false
    t.float     "max",             :null => false
    t.float     "min",             :null => false
    t.float     "median",          :null => false
  end

end
