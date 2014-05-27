class Pitcher < ActiveRecord::Base
  attr_accessible :email, :name    
  validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
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
      return pitches
    end                      
    
  
  end
