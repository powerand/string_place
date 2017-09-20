App.request = App.cable.subscriptions.create "RequestChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    App.requests_count.textContent = splur(1 * data.count, 'запрос', 'запроса', 'запросов')
    tmpElement = document.createElement 'div'
    tmpElement.innerHTML = data.diff;
    while tmpElement.firstChild
      App.requests_index.appendChild tmpElement.firstChild
    App.scroll_requests_index()

  count: ->
    @perform 'count'
