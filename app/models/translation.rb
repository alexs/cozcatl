class Translation < ActiveRecord::Base
  attr_accessible :original, :translate, :phrase
  
  validates_uniqueness_of :original
  validates_presence_of :original
end
