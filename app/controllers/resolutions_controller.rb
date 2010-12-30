class ResolutionsController < ApplicationController
  def suggest
    @resolution = Resolution.first(:order => 'RANDOM()')
  end
end
