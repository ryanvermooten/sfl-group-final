class DropTableAnswerQuestionnaire < ActiveRecord::Migration
  def change
  	drop_table :answers_questionnaires
  end
end
