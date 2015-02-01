class DropTableQuestionnaireInputTypes < ActiveRecord::Migration
  def change
  	drop_table :questionnaire_input_types
  end
end
