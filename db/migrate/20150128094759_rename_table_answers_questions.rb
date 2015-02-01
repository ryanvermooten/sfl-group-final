class RenameTableAnswersQuestions < ActiveRecord::Migration
  def change
  	rename_table :Answers_Questions, :answers_questions
  end
end
