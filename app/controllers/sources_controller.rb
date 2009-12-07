class SourcesController < ApplicationController
  
  def new
    if params[:channel_id]
      @channel = Channel.find(params[:channel_id])
    end
    @source = Source.new(:channel_id => params[:channel_id])
  end
  
  
  def create
    @source = Source.new(params[:source])
    @source.save!
    redirect_to channels_url
  rescue ActiveRecord::RecordInvalid
    render :action => :new
  end
  
end
