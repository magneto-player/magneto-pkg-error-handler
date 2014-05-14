
{View} = niceplay.Views

class ErrorHandlerView extends View
  @content: (err) ->
    @div class: 'error-msg-container', =>
      @header =>
        @h1 'An error occured'
        @div class: 'error-msg', err
      @footer =>
        @div class: 'btn btn-danger', 'Ok'

module.exports = ErrorHandlerView
