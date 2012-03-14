module Refinery
  module Pods
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Pods

      engine_name :refinery_pods

      initializer "register refinerycms_pods plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "pods"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.pods_admin_pods_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/pods/pod',
            :title => 'name'
          }
          
        end
      end

      config.to_prepare do
        require 'refinery/pods/extensions/page'
        Refinery::Page.send :include, Refinery::Pods::Extensions::Page
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Pods)
      end
    end
  end
end
