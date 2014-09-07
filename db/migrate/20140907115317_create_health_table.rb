class CreateHealthTable < ActiveRecord::Migration
  def change
    create_table :healths do |t|
    	t.string :meals
    	t.string :meals_with_veg
    	t.string :health
    	t.string :illness
    	t.boolean :other_illness
    	t.string :other_illness_qual
    end
  end
end
