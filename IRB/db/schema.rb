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

ActiveRecord::Schema.define(version: 20180226031524) do

  create_table "forms", force: :cascade do |t|
    t.string   "project_name"
    t.boolean  "full_board"
    t.boolean  "expedited_review"
    t.boolean  "exempt_review"
    t.boolean  "courtesy_review"
    t.text     "expedited_or_exempt_review_just"
    t.text     "abstract_summary"
    t.text     "purpose"
    t.text     "content_area"
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
    t.text     "sources_of_funding"
    t.text     "researcher_competency"
    t.text     "irb_comments"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

end
