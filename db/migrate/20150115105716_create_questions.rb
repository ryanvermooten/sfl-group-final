class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.integer :questionnaire_input_type_id
    	t.string :question
    end
      add_index :questions, [:questionnaire_input_type_id], unique: true,  :name => 'q_input_type_id_ix'
  end
end
