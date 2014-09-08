class AddColumn < ActiveRecord::Migration
  def change
  	add_column :healths, :gardener_id, :integer
  end
end
