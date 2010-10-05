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

ActiveRecord::Schema.define(:version => 20100710101534) do

  create_table "berufs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bewerbungs", :force => true do |t|
    t.string   "stellenbeschreibung"
    t.text     "bemerkung"
    t.string   "referenz"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "firma_id"
    t.integer  "beruf_id"
  end

  create_table "firmas", :force => true do |t|
    t.string   "firma_kurz"
    t.string   "firma"
    t.string   "ort"
    t.string   "strasse"
    t.string   "telefon1"
    t.string   "telefon2"
    t.string   "email1"
    t.string   "email2"
    t.string   "kontakt1"
    t.string   "kontakt2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "plz"
    t.string   "url"
  end

  create_table "kontaktarts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kontakts", :force => true do |t|
    t.text     "inhalt"
    t.integer  "kontaktart_id"
    t.integer  "bewerbung_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
