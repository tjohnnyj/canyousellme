class Pitcher < ActiveRecord::Base
  has_many :pitches
    def self.from_omniauth(auth)
      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.name
        user.oauth_token = auth.credentials.token
        user.oauth_expires_at = Time.at(auth.credentials.expires_at)
        user.save!
      end
    end   
    
    def pitches_for_pitcher(pitcher_id)                   
      my_pitches = Pitch.find_by_pitcher_id(pitcher_id) 
      return my_pitches 
    end   
  end
