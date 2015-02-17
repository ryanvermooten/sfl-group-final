class SupportVisitsController < ApplicationController
 
def new                                                   
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment                            
  @group = Group.find(params[:group_id])                  
  @gardener= Gardener.find(params[:gardener_id])
  @support_visit= SupportVisit.new

  respond_to do |format|                                  
    format.html #new.html.erb                             
    format.xml {render :xml => @support_visit}                   
  end                                                     
end                                                       
 
# GET /groups/:group_id/gardeners/:id/edit
  def edit
    #1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
    #2nd you retrieve the comment thanks to params[:id]
    @gardener= group.gardeners.find(params[:gardener_id])
    @gardener.support_visits.build(support_visit_params)
  end
 
# POST /groups/:group_id/group_gardeners
# POST /groups/:group_id/group_gardeners.xml

 def create
    #1st you retrieve the group thanks to params[:group_id]
  @group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
  @gardener= @group.gardeners.find(params[:gardener_id])
  @support_visit = @gardener.support_visits.build support_visit_params
 # @gardener.support_visits.build support_visit_params
  #@support_visit= @gardener.support_visits.build support_visit_params
      if @support_visit.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
      redirect_to group_gardener_url(@group, @gardener)
     # format.xml {render :xml => @gardener, :status => :created, :location => [@gardener.group,@gardener] }
      else
       render :new
        #format.xml {render :xml => @gardener.errors, status: :unprocessable_entity}
      end
    end
 
  private
 
  def support_visit_params
    params.require(:support_visit).permit(:gardener_id, :notes, :date_created)
  end
 
  def gardener_params
   params.require(:gardener).permit(:first_name, :last_name, :contact_number, :address, :group_id, :garden_at_home, :document, :id_number, :avatar)
  end
end
