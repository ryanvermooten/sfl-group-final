class AddEatingToUsers < ActiveRecord::Migration
  def change
    add_column :follow_up_visit_eatings, :eating, :boolean
  end
end
