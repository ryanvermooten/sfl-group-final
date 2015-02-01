class CreateTableTrainingEvaluation < ActiveRecord::Migration
  def change
    create_table :training_evaluation_trainings do |t|
    	t.integer :user_id
    	t.integer :group_id
    	t.datetime :datetime
    	t.string :good
    	t.string :information_was_helpful
    	t.string :easy_to_understand
    	t.string :support_visits_are_helpful
    	t.string :positives
    	t.string :negatives
    end
  end
end
