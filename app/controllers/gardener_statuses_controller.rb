class GardenerStatusesController < InheritedResources::Base

  private

    def gardener_status_params
      params.require(:gardener_status).permit(:gardener_id, :status_id)
    end
end

