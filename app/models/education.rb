class Education <ActiveRecord::Base
	belongs_to :gardener
	#validates :level, presence: true
	#belongs_to :group, through: :gardeners
end