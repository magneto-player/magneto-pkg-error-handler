
ErrorHandlerView = require './views/error-handler'
Shortcut = require './error-handler-shortcut'

class ErrorHandler
  constructor: ->
    magneto.on 'error:new', @show
    magneto.on 'error:hide', @hide

  show: (error) =>
    @hide()
    @errorHandlerView = new ErrorHandlerView(error)
    magneto.workspace.append @errorHandlerView

    @errorHandlerView.on 'click', '.btn.btn-danger', =>
      @hide()

    @errorHandlerShortcut = new Shortcut()

  hide: =>
    if @errorHandlerView
      @errorHandlerView.remove()
      delete @errorHandlerShortcut

module.exports = ErrorHandler
