class CreateSection5s < ActiveRecord::Migration
  def change
    create_table :section5s do |t|
      t.text :sources_of_funding
      t.text :researcher_competency
      #going to need a foreign key out to a table for researcher info,
      #to fulfill the dynamic aspect of the IRB form
      t.text :irb_comments
      t.integer :form_id
      t.timestamps null: false
    end
    
    add_index :section5s, :form_id
    add_foreign_key :section5s, :forms
  end
end
