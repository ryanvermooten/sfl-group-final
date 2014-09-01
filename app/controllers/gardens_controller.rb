class GardensController < ApplicationController

  def new
    #1st you retrieve the group thanks to params[:group_id]
    group= Group.find(params[:group_id])
    #2nd you build a new comment
    @gardener= group.gardeners.find(params[:gardener_id])
    
    @gardener.build_garden

    respond_to do |format|
      format.html #new.html.erb
      format.xml {render :xml => @garden}
    end
  end

# GET /groups/:group_id/gardeners/:id/edit
  def edit
    #1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
    #2nd you retrieve the comment thanks to params[:id]
    @gardener= group.gardeners.find(params[:gardener_id])
    @gardener.build_garden
  end

# POST /groups/:group_id/group_gardeners
# POST /groups/:group_id/group_gardeners.xml
  def create
    #1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
    @gardener= group.gardeners.find(params[:gardener_id])
    @gardener.build_garden
  end


  def update
    #1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
    @gardener = group.gardeners.find(params[:id])

    respond_to do |format|
      if @gardener.update_attributes(gardener_params)
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
     format.html {redirect_to([@gardener.group, @gardener], :notice => 'Gardener was successfully updated')}
     format.xml { head :ok}
      else
        format.html {render :action => "edit"}
        format.xml {render :xml => @gardener.errors, :status => :unprocessable_entity}
      end
    end
  end

  private

  def garden_params
    params.require(:garden).permit(:garden_located_at_home, :garden_location, :garden_w, :garden_h)

  def gardener_params
   params.require(:gardener).permit(:first_name, :last_name, :contact_number, :address, :group_id, :garden_at_home, :document, :id_number, :avatar)
  end

  def group_params
  params.require(:group).permit(:name, :area, :group_id)
  end
end
end


