class Pod < ActiveRecord::Base

  POD_TYPES = %w(content banner gallery video)

  acts_as_indexed :fields => [:name, :body, :url]

  validates_presence_of :name
  validates_inclusion_of :pod_type, :in => POD_TYPES

  belongs_to :image
  belongs_to :portfolio_entry
  belongs_to :video
  has_and_belongs_to_many :pages

  def system_name
    pod_type
  end

end