class AddAmbitionToSfl < ActiveRecord::Migration
  def change
  	add_column :sfls, :ambition, :text
  end
end
