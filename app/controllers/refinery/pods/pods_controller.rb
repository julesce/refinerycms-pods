module Refinery
  module Pods
    class PodsController < ::ApplicationController

      before_filter :find_all_pods
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @pod in the line below:
        present(@page)
      end

      def show
        @pod = Pod.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @pod in the line below:
        present(@page)
      end

    protected

      def find_all_pods
        @pods = Pod.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/pods").first
      end

    end
  end
end
