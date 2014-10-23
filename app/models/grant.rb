class Grant <ActiveRecord::Base
	belongs_to :gardener
	validates :grant_type, presence: true, if: :recieved?
	#belongs_to :group, through: :gardeners
end