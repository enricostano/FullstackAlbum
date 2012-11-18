class FullstackAlbum.Routers.Albums extends Backbone.Router
  routes:
    '': 'index'
    'albums/:id': 'show'
    'albums/edit/:id': 'edit'

  initialize: ->
    @collection = new FullstackAlbum.Collections.Albums()
    @collection.fetch()

  index: ->
    view = new FullstackAlbum.Views.AlbumsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    view = new FullstackAlbum.Views.AlbumsShow(collection: @collection, id: id)
    $('#container').html(view.render().el)

  edit: (id) ->
    view = new FullstackAlbum.Views.AlbumsEdit(collection: @collection, id: id)
    $('#container').html(view.render().el)
