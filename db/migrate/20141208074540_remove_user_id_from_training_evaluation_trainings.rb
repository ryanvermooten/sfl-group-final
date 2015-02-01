class RemoveUserIdFromTrainingEvaluationTrainings < ActiveRecord::Migration
  def change
  	remove_column :training_evaluation_trainings, :group_id
  	remove_column :training_evaluation_trainings, :user_id
  end
end
