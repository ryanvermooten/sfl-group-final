class ChangeRatingToString < ActiveRecord::Migration
  def change
  	change_column :follow_up_visit_gardens, :rating, :string
  end
end
