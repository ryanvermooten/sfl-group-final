class DeleteColumnsFromGardeners < ActiveRecord::Migration
  def change
  	remove_column :gardeners, :status
  	remove_column :gardeners, :garden_at_home
  	remove_column :gardeners, :garden_location
  	remove_column :gardeners, :garden_size_l
  	remove_column :gardeners, :garden_size_w
  	remove_column :gardeners, :maritial_status
  	remove_column :gardeners, :living_arrangements
  	remove_column :gardeners, :joining_details_referral
  	remove_column :gardeners, :joining_details_referral_qualitative
  	remove_column :gardeners, :joining_details_potential_growth
  	remove_column :gardeners, :education_levels
  	remove_column :gardeners, :education_levels_other
  	remove_column :gardeners, :employment
  	remove_column :gardeners, :employment_type
  	remove_column :gardeners, :earning_power
  	remove_column :gardeners, :grant
  	remove_column :gardeners, :grant_type
  	remove_column :gardeners, :grant_amount
  	remove_column :gardeners, :access_to_water
  	remove_column :gardeners, :gardening_tools
  	remove_column :gardeners, :gardening_tools_qualitative
  	remove_column :gardeners, :other_organizations
  	remove_column :gardeners, :other_organizations_qualitative
  	remove_column :gardeners, :help_received
  	remove_column :gardeners, :help_received_qualitative
  	remove_column :gardeners, :previous_experience
  	remove_column :gardeners, :previous_experience_qualitative
  	remove_column :gardeners, :currently_growing
  	remove_column :gardeners, :currently_growing_neg
  	remove_column :gardeners, :grown_veg_usage
  	remove_column :gardeners, :grown_veg_other_qualitative
  	remove_column :gardeners, :diet_health_issues
  end
end
