class AddEvaluationFormIdFromTrainingEvaluationMsc < ActiveRecord::Migration
  def change
  	add_column :training_evaluation_trainings, :training_evaluation_id, :integer
  end
end
