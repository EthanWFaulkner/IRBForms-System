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

ActiveRecord::Schema.define(version: 20180228145414) do

  create_table "forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section1s", force: :cascade do |t|
    t.string   "project_name"
    t.string   "approval_type"
    t.text     "expedited_or_exempt_review_just"
    t.integer  "form_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "section1s", ["form_id"], name: "index_section1s_on_form_id"

  create_table "section2s", force: :cascade do |t|
    t.text     "abstract_summary"
    t.text     "purpose"
    t.text     "content_area"
    t.integer  "form_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "section2s", ["form_id"], name: "index_section2s_on_form_id"

  create_table "section3s", force: :cascade do |t|
    t.text     "intended_population_characteristics"
    t.boolean  "faulkner_students_recruited"
    t.boolean  "faulkner_employees_recruited"
    t.boolean  "faulkner_not_recruited"
    t.integer  "min_participants"
    t.integer  "max_participants"
    t.text     "vulnerable_rationale"
    t.text     "protections_in_place"
    t.text     "descr_of_all_risk"
    t.text     "descr_of_comp"
    t.text     "descr_selection_proc"
    t.text     "assure_informed_consent"
    t.integer  "form_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "section3s", ["form_id"], name: "index_section3s_on_form_id"

  create_table "section4s", force: :cascade do |t|
    t.text     "data_collection_proc"
    t.text     "location_organization_data_collection"
    t.text     "data_to_be_collected"
    t.text     "period_of_data_collection"
    t.text     "prospective_or_retrospective"
    t.text     "anonymous_data"
    t.text     "data_collection_instruments"
    t.text     "data_stored_how"
    t.text     "length_of_data_retention"
    t.text     "who_has_data_access"
    t.text     "analysis_methods"
    t.text     "results_desseminated"
    t.integer  "form_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "section4s", ["form_id"], name: "index_section4s_on_form_id"

  create_table "section5s", force: :cascade do |t|
    t.text     "sources_of_funding"
    t.text     "researcher_competency"
    t.text     "irb_comments"
    t.integer  "form_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "section5s", ["form_id"], name: "index_section5s_on_form_id"

end
