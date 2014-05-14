
{jwerty} = require 'jwerty'

class ErrorKeyboardShortcut
  constructor: ->

    jwerty.key 'enter', ->
      niceplay.emit 'error:hide'

    jwerty.key 'esc', ->
      niceplay.emit 'error:hide'


module.exports = ErrorKeyboardShortcut