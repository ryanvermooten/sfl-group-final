class AddColumnAnswers < ActiveRecord::Migration
  def change
  	add_column :answers, :gardener_questionnaire_id, :integer
  end
end
