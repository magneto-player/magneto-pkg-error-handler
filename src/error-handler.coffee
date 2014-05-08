
ErrorHandlerView = require './views/error-handler'

class ErrorHandler
  constructor: ->
    @errorHandlerView = new ErrorHandlerView
    niceplay.workspace.append @errorHandlerView

    niceplay.on 'error:new', (err) =>
      @show(err)

  show: (error) =>
    @errorHandlerView.reportError(error)

module.exports = ErrorHandler
