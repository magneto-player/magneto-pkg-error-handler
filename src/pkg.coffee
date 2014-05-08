
[ErrorHandler] = []

module.exports =
  activate: ->
    ErrorHandler = ErrorHandler or require './error-handler'

    new ErrorHandler()

  desactivate: ->
