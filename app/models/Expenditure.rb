class Expenditure <ActiveRecord::Base
	belongs_to :gardener
	validates :where, :amount,  presence: true
	#belongs_to :group, through: :gardeners
end