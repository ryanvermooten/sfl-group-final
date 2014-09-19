class DeleteLeftOverColumnsFromGardeners < ActiveRecord::Migration
  def change
  	remove_column :gardeners, :state
  	remove_column :gardeners, :veg_bought
  	remove_column :gardeners, :veg_expenditure
  	remove_column :gardeners, :diet_food_intake
  	remove_column :gardeners, :diet_veg_intake
  	remove_column :gardeners, :diet_general_health
  end
end
