ActiveAdmin.register_page "water access"  do

    content do
          @metric = Ability.group(:water_access).count(:water_access)
              render :partial => 'metrics/pie_chart', :locals => {:metric => @metric}
                end
end