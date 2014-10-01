class AddColumnPhoneNumber < ActiveRecord::Migration
  def change
  	add_column :phones, :number, :integer
  end
end
