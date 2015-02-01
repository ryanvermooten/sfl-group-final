class DropColumnAnswers < ActiveRecord::Migration
  def change
  	remove_column :answers, :gardener_id
  	remove_column :answers, :question_id
  end
end
