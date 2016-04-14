`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  model: () ->
    @store.findAll('topic')


`export default IndexRoute`
