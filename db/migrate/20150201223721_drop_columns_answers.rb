class DropColumnsAnswers < ActiveRecord::Migration
  def change
  	remove_column :answers, :gardener_id
  	remove_column :answers, :questionnaire_id
  end
end
