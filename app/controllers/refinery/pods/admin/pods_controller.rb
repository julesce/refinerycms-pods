module Refinery
  module Pods
    module Admin
      class PodsController < ::Refinery::AdminController

        crudify :'refinery/pods/pod',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
