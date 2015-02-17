class GroupEvaluationsController <ApplicationController
	def new
		session[:group_evaluation_params] ||= {}
		@group = Group.all
		@group_evaluation = GroupEvaluation.new
	end

	def edit
	end

	def index
	end

	def create
		session[:group_evaluation_params].deep_merge!(params[:group_evaluation]) if params[:group_evaluation]
		@group_evaluation = GroupEvaluation.new(session[:group_evaluation_params])
		@group_evaluation.current_step = session[:group_evaluation_step]

		if params[:back_button]
			@group_evaluation.previous_step
		elsif @group_evaluation.last_step?
			@group_evaluation.save
		else
			@group_evaluation.next_step
		end

		session[:group_evaluation_step] = @group_evaluation.current_step
		if @group_evaluation.new_record?
			render "new"
		else
			session[:group_evaluation_step] = session[:group_evaluation_params] = nil
			flash[:notice] = "evaluation saved"
			redirect_to :action => "new"
		end
	end

	private
	def group_evaluation_params
		params.require(:group_evaluation).permit(:group_id, :date_answered, :training_good,
    :training_information_helpful, :training_support_helpful, :training_qualitative_positive,
    :training_qualitative_negative, :trainer_good, :trainer_understandable, :trainer_helpful,
    :trainer_approachable, :trainer_qualitative_positive, :trainer_qualitative_negative,
    :msc_qualitative, :final_notes, :date_answered, :training_understandable)
	end
end