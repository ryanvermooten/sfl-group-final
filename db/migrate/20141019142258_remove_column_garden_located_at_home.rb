class RemoveColumnGardenLocatedAtHome < ActiveRecord::Migration
  def change
  	remove_column :gardens, :garden_located_at_home
  end
end
