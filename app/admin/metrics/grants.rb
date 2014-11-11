ActiveAdmin.register_page "grants"  do

    content do
          @metric = Grant.group(:grant_type).count(:grant_type)
              render :partial => 'metrics/pie_chart', :locals => {:metric => @metric}
                end
end