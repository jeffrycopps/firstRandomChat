# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.cnt = 0
#location.reload()
$(document).ready ->

  #$j = jQuery
  #$j('').onkeypress() -> alert('super')

  root = exports ? this

  root.stop_msg = (event) ->  if event.innerHTML == 'Stop' then  event.innerHTML = "Really ?" else if event.innerHTML == "Really ?" then  $('#text_area').append('Sorry you have Disconnected'+'<p></p>'+ '<i><b>Click New to start a New Chat</b></i>') $("#msg_area").attr("disabled", true)   event.innerHTML = "New" else if event.innerHTML == "New" then location.reload()

  root.send_msg = () ->  $('#text_area').append('<span id="add_here" style="font-weight:bold;color:deepskyblue;">You&nbsp;:&nbsp;</span>' + $('#msg_area').val() + '<p></p>') $('#msg_area').val('') $('#msg_area').focus() if $('#msg_area').val() != ''

  root.GetChar = (event) -> $('#text_area').append('<span id="add_here" style="font-weight:bold;color:deepskyblue;">You&nbsp;:&nbsp;</span>'+$('#msg_area').val()+'<p></p>') $('#msg_area').val('') $('#msg_area').focus() if event.value.charAt(event.value.length-1)=='\n'