class CreateExpenditure < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
    	t.integer :gardener_id
    	t.string :where
    	t.string :amount
    end
  end
end
