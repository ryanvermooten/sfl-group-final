class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :Questions, :Questionnaires do |t|
      # t.index [:question_id, :questionnaire_id]
       t.index([:questionnaire_id, :question_id], unique: true, name: 'qs_and_questionnaire_index')
    end
  end
end
