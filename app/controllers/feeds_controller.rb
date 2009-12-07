require 'open-uri'

class FeedsController < ApplicationController
  
  respond_to :xml, :json
  
  def fetch
    @feed = open(params['feed'], 'r')
    respond_with do |format|
      format.xml { render :xml => @feed.read }
      format.atom { render :atom => @feed.read }
    end
  end
  
end
