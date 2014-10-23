class Sfl <ActiveRecord::Base
	belongs_to :gardener
	validates :referral, presence: true
	validates :other_organizations_qualitative, length: {minimum: 1, too_short: "You have indicated that the gardener has recieved help from other organizations, please note which ones"}, if: :other_organizations?
	validates :ambition, presence: true
	#belongs_to :group, through: :gardeners
end