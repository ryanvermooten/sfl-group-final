class AddRaceToGardeners < ActiveRecord::Migration
  def change
  	add_column :gardeners, :race, :string
  end
end
