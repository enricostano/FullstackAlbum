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
    cover_image = $('#cover_image').val()
    @model.save({name: name, cover_image: cover_image},
      success: (album) =>
        @model = album
        window.location = "/")
