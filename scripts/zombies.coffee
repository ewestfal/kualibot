# Description:
#   Bring forth zombies
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   (zombie) - Call in a zombie
#
# Author:
#   solap



images = [
  "http://24.media.tumblr.com/tumblr_m35jnyjTco1qikhvso1_100.gif",
  "http://www.netanimations.net/head2.gif",
  "http://www.netanimations.net/Animated-Zombie-Reverse.gif",
  "http://www.freewebs.com/echoeyy/zombie%20getting%20shot.gif",
  "https://i.chzbgr.com/maxW500/6360720640/h487AE90F/",
  "https://i.chzbgr.com/maxW500/5912815872/h8AB29CB2/",
  "https://i.chzbgr.com/maxW500/5299680512/h5120FD0B/",
  "http://asset.103.ggftw.net/wiki/lt-w/images/c/cc/Zombie.gif",
  "http://www.dreamteamevents.org/images/Dancing_Zombie.gif",
  "http://fc09.deviantart.net/fs70/f/2013/130/e/1/zombie_walking__animated_gif__by_ineptgrafik-d64tfw3.gif",
  "http://www.gifs.cc/halloweengifs/i-am-melting-1.gif",
  "http://www.netanimations.net/zombie3.gif",
  "http://media1.giphy.com/media/8xduRa5b7K8sU/giphy.gif"
  
  ]

module.exports = (robot) ->
  robot.hear /zombi(e|es)/i, (msg) ->
    msg.send msg.random images
