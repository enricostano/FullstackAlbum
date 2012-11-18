window.FullstackAlbum =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new FullstackAlbum.Routers.Albums
    Backbone.history.start(pushState: true)

$(document).ready ->
  FullstackAlbum.initialize()
