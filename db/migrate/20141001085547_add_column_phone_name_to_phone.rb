class AddColumnPhoneNameToPhone < ActiveRecord::Migration
  def change
  	add_column :phones, :phone_name, :string
  end
end
