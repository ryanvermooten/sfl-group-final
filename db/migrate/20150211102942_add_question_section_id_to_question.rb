class AddQuestionSectionIdToQuestion < ActiveRecord::Migration
  def change
  	add_column :questions, :question_section_id, :integer
  end
end
