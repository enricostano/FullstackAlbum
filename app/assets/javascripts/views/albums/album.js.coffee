class FullstackAlbum.Views.Album extends Backbone.View
  template: JST['albums/album']
  tagName: 'li'

  events:
    'click .destroy': 'destroy'

  render: ->
    $(@el).html(@template(album: @model))
    this

  destroy: () ->
    @model.destroy()
    this.remove()
    false
