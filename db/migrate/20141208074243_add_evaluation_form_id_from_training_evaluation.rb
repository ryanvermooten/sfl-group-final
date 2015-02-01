class AddEvaluationFormIdFromTrainingEvaluation < ActiveRecord::Migration
  def change
  	add_column :training_evaluation_mscs, :training_evaluation_id, :integer
  end
end
