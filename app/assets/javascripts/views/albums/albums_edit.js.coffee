class FullstackAlbum.Views.AlbumsEdit extends Backbone.View

  template: JST['albums/edit']

  events:
    "submit #edit_album": "update"

  render: ->
    $(@el).html(@template(album: @model))
    this

  update: (event) ->
    event.preventDefault()
    event.stopPropagation()
    name = $('#name').val()
    @model.save({name: name},
      success: (album) =>
        @model = album
        window.location.hash = "albums/#{@model.id}")
