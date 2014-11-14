class Health <ActiveRecord::Base
	belongs_to :gardener
	validates :meals, :meals_with_veg, :health, presence: true
	#belongs_to :group, through: :gardeners
end