class AddEvaluationFormIdFromTrainingEvaluationTrainers < ActiveRecord::Migration
  def change
  	add_column :training_evaluation_trainers, :training_evaluation_id, :integer
  end
end
