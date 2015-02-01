class AddInputAllowedInputType < ActiveRecord::Migration
	def change
  		add_column :input_types, :input_allowed, :string
 	end
end

