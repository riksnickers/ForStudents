# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#
# Account
#
$(document).on 'ready page:load', ->
  alert 'Loaded'
  console.log 'Loaded'
  $(".btn-group").on 'click', (e) ->
    console.log 'Account selected'