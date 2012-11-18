class FullstackAlbum.Views.AlbumsShow extends Backbone.View

  template: JST['albums/show']

  render: ->
    $(@el).html(@template(album: @model))
    this
