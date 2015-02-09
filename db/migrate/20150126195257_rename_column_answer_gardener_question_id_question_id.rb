class RenameColumnAnswerGardenerQuestionIdQuestionId < ActiveRecord::Migration
  def change
  	rename_column :answers, :gardener_question_id, :question_id
  end
end
