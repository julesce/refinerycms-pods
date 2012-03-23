module NavigationHelpers
  module Refinery
    module Pods
      def path_to(page_name)
        case page_name
        when /the list of pods/
          admin_pods_path

         when /the new pod form/
          new_admin_pod_path
        else
          nil
        end
      end
    end
  end
end
