class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string 'title'
      t.date 'submission_date'
      t.string 'result'
      t.string 'researcher'
      t.timestamps null: false
    end
  end
end
