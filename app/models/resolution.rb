class Resolution < ActiveRecord::Base

  def full_description
    "I will " + description + "."
  end
end
