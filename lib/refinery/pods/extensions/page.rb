module Refinery
  module Pods
    module Extensions
      module Page
        module ClassMethods
          def add_pods_relationship
            has_and_belongs_to_many :pods, :class_name => '::Refinery::Pods::Pod', :join_table => 'refinery_pages_pods'
          end
        end

        def self.included(base)
          base.extend(ClassMethods).add_pods_relationship
        end
      end
    end
  end
end