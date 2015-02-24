# Description:
#   Display a spooky ghost.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   it is a mystery
#
# Author:
#   jergason


module.exports = (robot) ->
  robot.hear /it is a mystery/i, (msg) ->
    msg.send 'http://i143.photobucket.com/albums/r151/ll_Crayola_ll7/Emotes/iiam-1.gif'
