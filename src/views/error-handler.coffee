
{View} = niceplay.Views

class ErrorHandlerView extends View
  @content: ->
    @div id: 'error-handler', ->

  initialize: ->


  reportError: (err) ->
    console.log 'An error occured: ', err


module.exports = ErrorHandlerView
