class Source < ActiveRecord::Base
  
  belongs_to :channel
  belongs_to :source_type
  
end
