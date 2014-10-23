class Experience <ActiveRecord::Base
	belongs_to :gardener
	validates :experience_qualitative, presence: true, if: :previous_experience?
	validates :currently_growing_neg, presence: :true, unless: :currently_growing?
	#validates :usage, presence: true, if: :currently_growing?
	#belongs_to :group, through: :gardeners
end