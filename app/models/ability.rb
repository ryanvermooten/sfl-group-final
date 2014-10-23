class Ability <ActiveRecord::Base
	belongs_to :gardener
	validates :water_access, presence: true
	#validates :tools_list, presence: true, if: :tools?
	#belongs_to :group, through: :gardeners
end