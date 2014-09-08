class RenameColumnTypeToEmployementType < ActiveRecord::Migration
  def change
  	rename_column :employments, :type, :employment_type
  end
end
