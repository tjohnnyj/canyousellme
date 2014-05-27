class Pitch < ActiveRecord::Base 
  
  attr_accessible :pitch_video_url, :pitcher_id     
  belongs_to :pitcher   
  
  def vid_key
    regex = /(https)\:\/\/(www\.youtube\.com\/watch\?v\=)?(.*)/.match(pitch_video_url)
    key = regex[3]  
    return key
  end       
  def get_video_details         
    yt_video_url = 'https://www.googleapis.com/youtube/v3/videos?id='+vid_key+'&key=AIzaSyB0P5uFtB126GMflBS8lg1QoYMNVB7RwHk&part=snippet,statistics'
    details = RestClient.get(yt_video_url)
     return details       
  end
  def embed_video         
    embed_video_url = 'http://www.youtube.com/v/'+vid_key+'?version=3'
    return embed_video_url       
  end
end
