class RenameTableTrainingEvaluationTrainingEvaluations < ActiveRecord::Migration
  def change
  	rename_table :training_evaluation, :training_evaluations
  end
end
