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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150908084533) do

  create_table "churches", force: :cascade do |t|
    t.string   "name",                     limit: 255,   default: "CHURCH NAME"
    t.string   "denomination",             limit: 255
    t.string   "primary_address_1",        limit: 255
    t.string   "primary_address_2",        limit: 255
    t.string   "primary_address_city",     limit: 255
    t.string   "primary_address_state",    limit: 255
    t.string   "primary_address_zip",      limit: 255
    t.string   "website",                  limit: 255
    t.string   "email",                    limit: 255
    t.string   "phone",                    limit: 255
    t.string   "fax",                      limit: 255
    t.string   "mailing_address_1",        limit: 255
    t.string   "mailing_address_2",        limit: 255
    t.string   "mailing_address_city",     limit: 255
    t.string   "mailing_address_state",    limit: 255
    t.string   "mailing_address_zip",      limit: 255
    t.string   "pastor_title",             limit: 255
    t.string   "pastor_first_name",        limit: 255
    t.string   "pastor_last_name",         limit: 255
    t.string   "pastor_address_1",         limit: 255
    t.string   "pastor_address_2",         limit: 255
    t.string   "pastor_address_city",      limit: 255
    t.string   "pastor_address_state",     limit: 255
    t.string   "pastor_address_zip",       limit: 255
    t.string   "pastor_home_phone",        limit: 255
    t.string   "pastor_cell_phone",        limit: 255
    t.string   "pastor_additional_phone",  limit: 255
    t.string   "pastor_email",             limit: 255
    t.string   "pastor_birthdate",         limit: 255
    t.string   "pastor_spouse_title",      limit: 255
    t.string   "pastor_spouse_first_name", limit: 255
    t.string   "pastor_spouse_last_name",  limit: 255
    t.string   "pastor_spouse_birthdate",  limit: 255
    t.string   "pastor_bivocational",      limit: 255
    t.string   "number_gideoncard_racks",  limit: 255
    t.integer  "worship_attendance",       limit: 4
    t.string   "gideon_representative",    limit: 255
    t.integer  "camp_id",                  limit: 4
    t.datetime "last_service_date"
    t.string   "support_level",            limit: 255
    t.string   "relationship_strength",    limit: 255
    t.string   "rank",                     limit: 255
    t.boolean  "has_media_broadcast"
    t.text     "other_info",               limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
