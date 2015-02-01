class CreateQuestionnaireInputTypes < ActiveRecord::Migration
  def change
    create_table :questionnaire_input_types do |t|
    	t.integer :questionnaire_id
    	t.integer :input_type_id
    end
       add_index :questionnaire_input_types, [:questionnaire_id, :input_type_id], unique: true,  :name => 'question_&_input_type_id_ix'
  end
end