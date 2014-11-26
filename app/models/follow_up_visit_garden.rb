class FollowUpVisitGarden <ActiveRecord::Base
	belongs_to :gardener, validate: false
end