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

ActiveRecord::Schema.define(version: 20140331081137) do

  create_table "fp7_contractors", force: true do |t|
    t.string   "rcn"
    t.string   "project_title"
    t.string   "contract_number"
    t.string   "role"
    t.string   "pj_uid"
    t.string   "organization_name"
    t.string   "organization_department"
    t.string   "organization_subdepartment"
    t.string   "organization_acronym"
    t.string   "organization_size"
    t.string   "organization_type"
    t.string   "address"
    t.string   "po_box"
    t.string   "post_code"
    t.string   "city"
    t.string   "country"
    t.string   "organization_website"
    t.string   "pe_uid"
    t.string   "contact_surname"
    t.string   "contact_name"
    t.string   "contact_position"
    t.string   "contact_initials"
    t.string   "contact_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fp7_projects", force: true do |t|
    t.string   "rcn"
    t.string   "project_title"
    t.date     "start_date"
    t.date     "end_date"
    t.date     "duration"
    t.string   "status"
    t.string   "contract_number"
    t.string   "keywords"
    t.date     "date_of_signature"
    t.decimal  "total_cost"
    t.decimal  "total_funding"
    t.date     "entry_date"
    t.string   "project_website"
    t.text     "other_information"
    t.string   "call"
    t.string   "framework_programme"
    t.string   "programme"
    t.string   "project_acronym"
    t.string   "achievements"
    t.string   "activity_area"
    t.string   "subjects"
    t.string   "contract_type"
    t.text     "general_information"
    t.text     "objectives"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
