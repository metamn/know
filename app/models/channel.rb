class Channel < ActiveRecord::Base
  
  has_many :sources
  
  validates_presence_of :name
  
end
