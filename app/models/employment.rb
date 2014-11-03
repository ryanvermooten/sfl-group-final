class Employment <ActiveRecord::Base
	belongs_to :gardener
	validates :employment_type, :earning_power, presence: true, if: :employed?
	validates :employment_type, :earning_power, presence: true, if: :employed?
	#belongs_to :group, through: :gardeners
end