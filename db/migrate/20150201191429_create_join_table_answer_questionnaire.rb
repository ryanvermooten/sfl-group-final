class CreateJoinTableAnswerQuestionnaire < ActiveRecord::Migration
  def change
    create_join_table :answers, :questionnaires do |t|
      # t.index [:answer_id, :questionnaire_id]
       t.index [:questionnaire_id, :answer_id]
    end
  end
end
