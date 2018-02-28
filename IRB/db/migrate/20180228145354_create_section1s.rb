class CreateSection1s < ActiveRecord::Migration
  def change
    create_table :section1s do |t|
      t.string :project_name
      t.boolean :full_board
      t.boolean :expedited_review
      t.boolean :exempt_review
      t.boolean :courtesy_review
      t.text :expedited_or_exempt_review_just
      t.belongs_to :form, index: true
      t.integer :form_id
      t.timestamps null: false
    end
    
    add_index :section1s, :form_id
    add_foreign_key :section1s, :forms
  end
end
