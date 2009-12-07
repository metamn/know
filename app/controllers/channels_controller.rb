class ChannelsController < ApplicationController
  
  def index
    @channels = Channel.all(:include => :sources)
  end
  
end
