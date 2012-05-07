module Refinery
  module Pods
    class Pod < Refinery::Core::BaseModel
      self.table_name = 'refinery_pods'

      POD_TYPES = %w(content banner gallery video)

      attr_accessible :name, :body, :url, :image_id, :pod_type, :portfolio_entry_id, :video_id, :position

      acts_as_indexed :fields => [:name, :body, :url, :pod_type]

      validates_presence_of :name
      validates_inclusion_of :pod_type, :in => POD_TYPES
          
      belongs_to :image, :class_name => '::Refinery::Image'

      belongs_to :portfolio_entry, :class_name => '::Refinery::Portfolio::Gallery'
      belongs_to :video, :class_name => '::Refinery::Videos::Video'
      has_and_belongs_to_many :pages, :class_name => '::Refinery::Page', :join_table => 'refinery_pages_pods'

      def system_name
        pod_type
      end

    end
  end
end
