###
 Copyright (c) 2015, Upnext Technologies Sp. z o.o.
 All rights reserved.

 This source code is licensed under the BSD 3-Clause License found in the
 LICENSE.txt file in the root directory of this source tree. 
###

class Presence
  constructor: (@dom) ->
    @initCheckboxes()

  initCheckboxes: ->
    checkbox = $(@dom).find(':checkbox')
    checkbox.change(@checkboxChanged)

  checkboxChanged: ->
    url = $(@).attr('url')
    method = if $(@).is(':checked') then "POST" else "DELETE"

    $.ajax({
      url: url
      type: method
    })


$ ->
  window.Presence = Presence
