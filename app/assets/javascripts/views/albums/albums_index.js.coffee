class FullstackAlbum.Views.AlbumsIndex extends Backbone.View

  template: JST['albums/index']

  events:
    'submit #new_album': 'createAlbum'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendAlbum, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendAlbum)
    this

  appendAlbum: (album) =>
    view = new FullstackAlbum.Views.Album(model: album)
    @$('#albums').append(view.render().el)

  createAlbum: (event) ->
    event.preventDefault()
    attributes = {name: $('#new_album_name').val(), cover_image: $('#new_album_cover_image')}
    @collection.create(attributes, {
      wait: true
      success: -> $('#new_album')[0].reset()
      error: @handleError})

  handleError: (album, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText)
      for attribute, message of errors
        alert "#{attribute} #{message}"
