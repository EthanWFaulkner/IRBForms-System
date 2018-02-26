class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :project_name
      t.boolean :full_board
      t.boolean :expedited_review
      t.boolean :exempt_review
      t.boolean :courtesy_review
      t.text :expedited_or_exempt_review_just
      t.text :abstract_summary
      t.text :purpose
      t.text :content_area
      t.text :intended_population_characteristics
      t.boolean :faulkner_students_recruited
      t.boolean :faulkner_employees_recruited
      t.boolean :faulkner_not_recruited
      t.integer :min_participants
      t.integer :max_participants
      t.text :vulnerable_rationale
      t.text :protections_in_place
      t.text :descr_of_all_risk
      t.text :descr_of_comp
      t.text :descr_selection_proc
      t.text :assure_informed_consent
      t.text :data_collection_proc
      t.text :location_organization_data_collection
      t.text :data_to_be_collected
      t.text :period_of_data_collection
      t.text :prospective_or_retrospective
      t.text :anonymous_data
      t.text :data_collection_instruments
      t.text :data_stored_how
      t.text :length_of_data_retention
      t.text :who_has_data_access
      t.text :analysis_methods
      t.text :results_desseminated
      t.text :sources_of_funding
      t.text :researcher_competency
      #going to need a foreign key out to a table for researcher info,
      #to fulfill the dynamic aspect of the IRB form
      t.text :irb_comments
      t.timestamps null: false
    end
  end
end
