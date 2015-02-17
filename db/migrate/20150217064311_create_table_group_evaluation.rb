class CreateTableGroupEvaluation < ActiveRecord::Migration
  def change
    create_table :table_group_evaluations do |t|
      t.integer :group_id
      t.integer :training_eval_id
      t.integer :trainer_eval_id
      t.integer :msc_eval_id
      t.integer :final_notes_id
    end
  end
end
