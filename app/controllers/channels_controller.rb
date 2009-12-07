class ChannelsController < ApplicationController
  
  def index
    @channels = Channel.all(:include => :sources)
  end
  
  def new
    @channel = Channel.new
  end
  
  def create
    @channel = Channel.new(params[:channel])
    @channel.save!
    redirect_to channels_url
  rescue ActiveRecord::RecordInvalid
    render :action => :new
  end
  
end
