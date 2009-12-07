class Channel < ActiveRecord::Base
  
  has_many :sources
  
end
