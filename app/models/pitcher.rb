class Pitcher < ActiveRecord::Base
  attr_accessible :email, :name     
  has_many :pitches
end
