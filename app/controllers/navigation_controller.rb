class NavigationController < ApplicationController
	  before_filter :authenticate_user!

	def new
	@gardener = Gardener.new
	end

	def create
	#@group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
    #@group = Group.find(params[:group_id])
    @gardener = Gardener.create(gardener_params)
    #@gardener.url = "#{@gardener.group_id}"
    respond_to do |format|
      if @gardener.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
      format.html {redirect_to homepage_index_path}
      else
        format.html {render :action => "new"}
      end
    end
  end

	 private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
      def gardener_params
    	 params.require(:gardener).permit(:group_id, :first_name,  :last_name, :contact_number, :address, :id_number, :race)
      end
end

