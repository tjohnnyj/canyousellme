# 2. This code loads the IFrame Player API code asynchronously.
# can see here https://developers.google.com/youtube/iframe_api_reference
# 3. This function creates an <iframe> (and YouTube player)
#    after the API code downloads.
onYouTubeIframeAPIReady = ->
  player = new YT.Player("player",
    height: "390"
    width: "640"
    videoId: "M7lc1UVf-VE"
    events:
      onReady: onPlayerReady
      onStateChange: onPlayerStateChange
  )
  return

# 4. The API will call this function when the video player is ready.
onPlayerReady = (event) ->
  event.target.playVideo()
  return

# 5. The API calls this function when the player's state changes.
#    The function indicates that when playing a video (state=1),
#    the player should play for six seconds and then stop.
onPlayerStateChange = (event) ->
  if event.data is YT.PlayerState.PLAYING and not done
    setTimeout stopVideo, 6000
    done = true
  return
stopVideo = ->
  player.stopVideo()
  return
tag = document.createElement("script")
tag.src = "https://www.youtube.com/iframe_api"
firstScriptTag = document.getElementsByTagName("script")[0]
firstScriptTag.parentNode.insertBefore tag, firstScriptTag
player = undefined
done = false