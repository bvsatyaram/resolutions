class ResolutionsController < ApplicationController
  skip_before_filter :verify_authenticity_token if :request_from_facebook?
  
  def suggest
    @resolution = Resolution.first(:order => 'RANDOM()')
    publish_resolution_to_wall
  end

  protected

  def publish_resolution_to_wall
    begin
      fbclient.selection.me.feed.publish!(
        :message => "Lol Maax!",
        :name => "My resolution for the year 2011",
        :caption => @resolution.full_description,
        :link => APP_URL,
        :actions => "{'name': 'Get my resolution', 'link': '#{APP_URL}'}"
      )
    rescue
      nil
    end
  end
end
