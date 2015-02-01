class CreateJoinTableAnswersQuestions < ActiveRecord::Migration
  def change
    create_join_table :Answers, :Questions do |t|
       t.index [:answer_id, :question_id]
      # t.index [:question_id, :answer_id]
    end
  end
end
