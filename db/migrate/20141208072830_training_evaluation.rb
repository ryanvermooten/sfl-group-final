class TrainingEvaluation < ActiveRecord::Migration
  def change
  	create_table :training_evaluation do |t|
  		t.integer :group_id
  end
end
end
