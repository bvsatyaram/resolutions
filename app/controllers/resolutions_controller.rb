class ResolutionsController < ApplicationController
  skip_before_filter :verify_authenticity_token if :request_from_facebook?
  
  def suggest
    @resolution = Resolution.first(:order => 'RANDOM()')
  end
end
