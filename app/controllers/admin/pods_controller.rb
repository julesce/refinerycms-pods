module Admin
  class PodsController < Admin::BaseController

    crudify :pod,
            :title_attribute => 'name', :xhr_paging => true

  end
end
