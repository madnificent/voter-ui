`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  model: () ->
    @store.query('topic', { sort: "votes" })


`export default IndexRoute`
