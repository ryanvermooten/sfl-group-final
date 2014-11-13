class AttendanceRegistersController < ApplicationController
 # before_action :set_group, only: [:new, :edit, :create, :show]
# GET /groups/:group_id/gardeners/new
# GET /groups/:group_id/gardeners/new.xml

def new
   @group = Group.find(params[:group_id])                  
  @gardeners= @group.gardeners
  @attendance_register = @group.attendance_registers.build
    #1st you retrieve the group thanks to params[:group_id]
  #  @group= Group.find(params[:group_id])
    #2nd you recieve the gardeners thanks to group.gardeners
   # @gardeners = @group.gardeners
    #3nd you build a new comment
#    @attendance_register = @group.attendance_registers.build
    respond_to do |format|
      format.html #new.html.erb
      format.xml {render :xml => @attendance_register }
    end
  end

   def show
    @attendance_registers = AttendanceRegister.all
#1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
#2nd you retrieve the gardeners thanks to params[:id]
    @gardeners = group.gardeners.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml {render :xml => @gardener}
    end
  end

# GET /groups/:group_id/gardeners/:id/edit
  def edit
    #1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
    #2nd you retrieve the comment thanks to params[:id]
    @gardener = group.gardeners.find(params[:id])
  end

# POST /groups/:group_id/group_gardeners
# POST /groups/:group_id/group_gardeners.xml
  def create
    logger.warn(params.inspect)
    #1st you retrieve the group thanks to params[:group_id]
   # @group = Group.find(params[:group_id])
    #@gardeners = @group.gardeners
    #2nd you create the trainer wih arguments in params [:gardener]
    #@attendance_register = @group.attendance_registers.build(attendance_register_params)
    @group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
    @gardeners= @group.gardeners
    @attendance_register = @group.attendance_registers.create(attendance_register_params)
      if @attendance_register.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
      flash.now[:notice] = 'Attendance Register Saved'
      redirect_to groups_url (@group)
      else
        flash.now[:error] = 'not working'
        render action: "new"
        #format.html {render :action => "new", :notice => logger.info @attendance_reigster.errors.full_messages.join("\n ####### \n")}
      end
    end
  end

=begin
  def updat
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
=end
  private
    def gardener_params
      params.require(:gardener).permit(:first_name, :last_name, :contact_number, :address, :group_id)
    end

    def group_params
      params.require(:group).permit(:name, :area, :group_id)
    end

    def attendance_register_params
      params.require(:attendance_register).permit(:attended, :training_session_id, gardener_ids: [])
    end