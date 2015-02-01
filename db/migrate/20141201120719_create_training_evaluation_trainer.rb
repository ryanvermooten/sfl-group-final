class CreateTrainingEvaluationTrainer < ActiveRecord::Migration
  def change
    create_table :training_evaluation_trainers do |t|
    	t.integer :user_id
    	t.integer :group_id
    	t.datetime :datetime
    	t.string :good
    	t.string :communicated_clearly
    	t.string :helpful
    	t.string :easy_to_talk_to
    	t.string :positive
    	t.string :negative
    end
  end
end
