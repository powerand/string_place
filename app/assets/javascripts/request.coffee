# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.scroll_requests_index = -> App.requests_index.scrollTop = App.requests_index.scrollHeight

document.addEventListener 'DOMContentLoaded', ->
  App.requests_index = document.getElementsByClassName('requests_index')[0]
  App.requests_count = document.getElementsByClassName('requests_count')[0]
  App.scroll_requests_index()
  App.request_text = document.getElementById('request_text')
  document.getElementById('new_request').addEventListener 'ajax:send', ->
    App.request_text.value = ''
    App.request_text.focus()
