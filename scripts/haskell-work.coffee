# Description:
#   Evaluate one line of Haskell
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot [haskell|hs] <script> - Evaluate one line of Haskell
#
# Author:
#   jergason


module.exports = (robot) ->
  robot.respond /(haskell|hs)\s+(.*)/i, (msg) ->
    script = msg.match[2]

    msg.http("http://tryhaskell.org/eval")
      .query({exp: script})
      .get() (err, res, body) ->
        switch res.statusCode
          when 200
            try
              result = JSON.parse(body)
              if result.error
                msg.send result.error
              else
                x = [result.success.value, result.success.type]
                # slack adapter doesn't let you send empty text so we only
                # prepend stdout if there is something there
                if result.success.stdout?.length
                  x.unshift result.success.stdout.join('')
                msg.send x...
            catch e
              msg.send "Unable to evaluate script: #{script}. Request returned with the status code: #{res.statusCode} and error #{e}"
