class CreateSection2s < ActiveRecord::Migration
  def change
    create_table :section2s do |t|
      t.text :abstract_summary
      t.text :purpose
      t.text :content_area
      t.integer :form_id
      t.timestamps null: false
    end
    
    add_index :section2s, :form_id
    add_foreign_key :section2s, :forms
  end
end
