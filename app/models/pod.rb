class Pod < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :body, :url]

  validates_presence_of :name, :pod_type_id
  
  belongs_to :image
  belongs_to :portfolio_entry
  belongs_to :video
  belongs_to :pod_type
  belongs_to :special
  has_and_belongs_to_many :pages
  has_and_belongs_to_many :lodges

  def system_name
    pod_type.system_name
  end

end