module Refinery
  module Pods
    module Admin
      class PodsController < ::Refinery::AdminController

        crudify :'refinery/pods/pod',
                :title_attribute => 'name'
                
        private

        def pod_params
        	params.require(:pod).permit([:name, :body, :url, :image_id, :pod_type, :portfolio_entry_id, :video_id, :position, :page_ids])
        end

      end
    end
  end
end
