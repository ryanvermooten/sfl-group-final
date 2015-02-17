class CreateTableQuestionSection < ActiveRecord::Migration
  def change
    create_table :question_sections do |t|
    	t.string :section
    end
  end
end
