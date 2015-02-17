class GroupEvaluationsController <ApplicationController
	def new
		@group = Group.all
		@group_evaluation = GroupEvaluation.new
	end
	def edit
	end
	def index
	end
	def create
	end
end