class Pitch < ActiveRecord::Base
  attr_accessible :pitch_video_url, :pitcher_id     
  belongs_to :pitcher
end
