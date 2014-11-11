ActiveAdmin.register_page "Gardener Growth"  do

    content do
          @metric = Gardener.group_by_week(:created_at).count
              render :partial => 'metrics/line_chart', :locals => {:metric => @metric}
                end

end
