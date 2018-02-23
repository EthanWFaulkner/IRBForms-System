class CreateFormElements < ActiveRecord::Migration
  def change
    create_table :form_elements do |t|
      t.references :form, index: true, foreign_key: true
      t.string 'name'
      t.string 'value'
      t.timestamps null: false
    end
  end
end
