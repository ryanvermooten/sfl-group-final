class FollowUpVisitGardensController < ApplicationController
 
  def new                                                   
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment                            
    @group = Group.find(params[:group_id])                  
    @gardener= Gardener.find(params[:gardener_id]) 
    @follow_up_visit_garden= FollowUpVisitGarden.new              
    if @gardener.valid?
      render "new"
    else
      redirect_to edit_group_gardener_path(@group, @gardener), notice: 'We are missing something in the gardener information, please complete this form first then try the follow up form again.'                                                     
    end                                                     
  end

# GET /groups/:group_id/gardeners/:id/edit
  def edit
    #1st you retrieve the group thanks to params[:group_id]
    @group = Group.find(params[:group_id])
    #2nd you retrieve the comment thanks to params[:id]
    @gardener= @group.gardeners.find(params[:gardener_id])
    @follow_up_visit_garden = @gardener.build_follow_up_visit_garden
  end
 
# POST /groups/:group_id/group_gardeners
# POST /groups/:group_id/group_gardeners.xml
  def create
    #1st you retrieve the group thanks to params[:group_id]
    @group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
    @gardener= @group.gardeners.find(params[:gardener_id])
    @follow_up_visit_garden = @gardener.build_follow_up_visit_garden follow_up_visit_garden_params
    if @gardener.save!
      redirect_to new_group_gardener_follow_up_visit_eating_path(@group, @gardener)
        #render "follow_up_visit_gardens/new", id:@gardener 
    else
      render "edit"
    end
  end
=begin
  def update
    #1st you retrieve the group thanks to params[:group_id]
    @group = Group.find(params[:group_id])
    @gardener = group.gardeners.find(params[:id])
    respond_to do |format|
    if @gardener.update_attributes(follow_up_visit_garden_params)
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
 
  def follow_up_visit_garden_params
    params.require(:follow_up_visit_garden).permit(:gardener_id, :date_created, :still_gardening, :rating, :mini_nursery, :compost_heap, :trench_bed, :trench_bed_sum, :container_garden, :container_garden_sum, :other, :other_qualitative)
  end

  def gardener_params
    params.require(:gardener).permit(:first_name, :last_name, :contact_number, :address, :group_id, :garden_at_home, :document, :id_number, :avatar)
  end
end
