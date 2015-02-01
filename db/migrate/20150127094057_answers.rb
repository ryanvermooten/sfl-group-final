class Answers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.integer :question_id
  		t.integer :gardener_id
  		t.string :answer
  end
end
end
