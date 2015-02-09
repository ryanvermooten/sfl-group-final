class RenameTableQuestionnairesQuestions < ActiveRecord::Migration
  def change
  	rename_table :Questionnaires_Questions, :questionnaires_questions
  end
end
