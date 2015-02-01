class TrainingEvaluationTrainersController < ApplicationController
 
  def new
  @training_evaluation =  TrainingEvaluation.find(params[:training_evaluation_id])
  @training_evaluation_trainer = TrainingEvaluationTrainer.new                                           
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment
  end                                                                                                          
 
# GET /groups/:group_id/gardeners/:id/edit
  def edit
    #1st you retrieve the group thanks to params[:group_id]
  end
 
# POST /groups/:group_id/group_gardeners
# POST /groups/:group_id/group_gardeners.xml
  def create
    #1st you retrieve the group thanks to params[:group_id]
  
  end

=begin
  def update
    #1st you retrieve the group thanks to params[:group_id]
    @group = Group.find(params[:group_id])
    @gardener = group.gardeners.find(params[:id])
    respond_to do |format|
    if @gardener.update_attributes(follow_up_visit_eating_params)
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
      format.html {redirect_to([@gardener.group, @gardener], :notice => 'what what was successfully updated')}
      format.xml { head :ok}
    else
      format.html {render :action => "edit"}
      format.xml {render :xml => @gardener.errors, :status => :unprocessable_entity}
    end
  end
=end
  
  private

  def training_evaluation_params
    params.requre(:training_evaluation).permit(:training_evaluation_id, :group_id)
  end
 
  def trainer_evaluation_training_params
    params.require(:trainer_evaluation_training).permit(:training_evaluation_id, :good, :communicated_clearly, :helpful, :easy_to_talk_to, :positive, :negative)
  end
end


