class Questionnaire < ActiveRecord::Migration
  def change
  	create_table :questionnaires do |t|
  		t.integer :questionnaire_id
  		t.string :name
  end
end
end
