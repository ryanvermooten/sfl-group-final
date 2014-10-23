class Health <ActiveRecord::Base
	belongs_to :gardener
	validates :meals, :meals_with_veg, :health, :illness, presence: true
	#belongs_to :group, through: :gardeners
end