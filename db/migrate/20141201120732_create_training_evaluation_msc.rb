class CreateTrainingEvaluationMsc < ActiveRecord::Migration
  def change
    create_table :training_evaluation_mscs do |t|
    	t.integer :user_id
    	t.integer :group_id
    	t.datetime :datetime
    	t.string :most_significant_change
    	t.string :final_coment
    end
  end
end
