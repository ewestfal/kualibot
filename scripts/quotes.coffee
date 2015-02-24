# Description:
#   Displays a random KualiQuote.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot quote 
#
# Author:
#   solap

module.exports = (robot) ->
  robot.respond /(quote)?(.*)/i, (msg)->
    msg.send(quote())

  quote = () ->
    quotes[(Math.random() * quotes.length) >> 0]

  quotes = [
    "Let's rock, let's rock, today. - Jack Black",
    "It takes a long time to grow young. - Pablo Picasso",
    "So often people are working hard at the wrong thing. Working on the right thing is probably more important than working hard. - Caterina Fake",
    "You could have a million ideas, but they’re all worthless if you don’t get them done. - Laurent Amarante",
    "If you’re not making mistakes, then you’re not making decisions. - Catherine Cook",
    "The only thing worse than being blind is having sight but no vision. - Helen Keller",
    "A committee takes hours to put into minutes what can be done in seconds. - Judy Castrina",
    "The most courageous act is still to think for yourself. Aloud. - Coco Chanel",
    "I’m not afraid of storms, for I’m learning how to sail my ship. - Louisa May Alcott",
    "Do it. Do it right. Do it right now. - Spencer W. Kimball",
    "The most effective way to do it, is to do it. - Amerlia Earhart",
    "Nothing enhances productivity like a good meeting or 10. - Jamison Dance",
    "Never limit yourself because of others’ limited imagination; never limit others because of your own limited imagination. Mae Jemison",
    "People will forget what you said. People will forget what you did. But people will never forget how you made them feel. Maya Angelou",
    "Courage is like a muscle. We strengthen it by use. - Ruth Gordon",
    "The most common way people give up their power is by thinking they don’t have any. - Alice Walker",
    "The question isn’t who’s going to let me; it’s who is going to stop me. - Ayn Rand",
    "Success breeds confidence. - Beryl Markham",
    "Life shrinks or expands in proportion to one’s courage. - Anais Nin",
    "Everything Should Be Made as Simple as Possible, But Not Simpler. - Albert Einstein"
  ]
