class SourceType < ActiveRecord::Base
  
  has_many :sources
  
  validates_uniqueness_of :name
  
end
