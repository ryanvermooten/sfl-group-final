class CreateTableQuesions < ActiveRecord::Migration
  def change
    create_table :quesions do |t|
    	t.string :question
    	t.integer :input_type_id
    end
  end
end
