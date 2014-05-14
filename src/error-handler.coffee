
ErrorHandlerView = require './views/error-handler'

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

  hide: =>
    if @errorHandlerView
      @errorHandlerView.remove()

module.exports = ErrorHandler
