class Translation < ActiveRecord::Base
  attr_accessible :original, :translate, :phrase
end
