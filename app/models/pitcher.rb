class Pitcher < ActiveRecord::Base
  attr_accessible :email, :name     
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
      @pitcher = Pitcher.find_by_id(pitcher_id)
      pitches = @pitcher.pitches.all  
      pitches.each do |pitch|
        pitch["vid_key"] = get_vid_key(pitch.pitch_video_url)
      end   
      return pitches
    end                      
    
    def get_vid_key(pitch_video_url)
      regex = /(https)\:\/\/(www\.youtube\.com\/watch\?v\=)?(.*)/.match(pitch_video_url)
      key = regex[3]  
    end    
  end
