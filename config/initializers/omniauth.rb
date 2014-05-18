#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :twitter, '0mF2hpnaCIC8EJjR9cAnSfEJP', 'ZP4nlnsbNpQ0fdkQMP2Ub7lV2kUdtQ6Z39CUiVG69pmmjuuZKN'
#  provider :facebook, '449717058499277', 'a8b5e7b41787f7ddc9393b973ece0430'
#  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'   
#end

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '449717058499277', 'a8b5e7b41787f7ddc9393b973ece0430'
end  

