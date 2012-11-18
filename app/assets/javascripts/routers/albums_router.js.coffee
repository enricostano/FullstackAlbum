class FullstackAlbum.Routers.Albums extends Backbone.Router
  routes:
    '': 'index'
    'albums/:id': 'show'
    'albums/edit/:id': 'edit'

  initialize: ->
    @collection = new FullstackAlbum.Collections.Albums()
    @collection.reset($('#container').data 'albums')

  index: ->
    view = new FullstackAlbum.Views.AlbumsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    album = @collection.get(id)
    view = new FullstackAlbum.Views.AlbumsShow(model: album)
    $('#container').html(view.render().el)

  edit: (id) ->
    album = @collection.get(id)
    view = new FullstackAlbum.Views.AlbumsEdit(model: album)
    $('#container').html(view.render().el)
