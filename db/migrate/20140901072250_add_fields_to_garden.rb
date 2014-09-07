class AddFieldsToGarden < ActiveRecord::Migration
  def change
  	add_column :gardens, :garden_located_at_home, :boolean
  	add_attachment :gardens, :avatar
  end
end
