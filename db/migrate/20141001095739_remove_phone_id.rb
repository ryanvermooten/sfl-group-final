class RemovePhoneId < ActiveRecord::Migration
  def change
  	remove_column :phones, :phone_id
  end
end
