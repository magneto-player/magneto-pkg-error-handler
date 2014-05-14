
ErrorHandlerView = require './views/error-handler'
Shortcut = require './error-handler-shortcut'

class ErrorHandler
  constructor: ->
    niceplay.on 'error:new', @show
    niceplay.on 'error:hide', @hide

  show: (error) =>
    @hide()
    @errorHandlerView = new ErrorHandlerView(error)
    niceplay.workspace.append @errorHandlerView

    @errorHandlerView.on 'click', '.btn.btn-danger', =>
      @hide()

    @errorHandlerShortcut = new Shortcut()

  hide: =>
    if @errorHandlerView
      @errorHandlerView.remove()
      delete @errorHandlerShortcut

module.exports = ErrorHandler
