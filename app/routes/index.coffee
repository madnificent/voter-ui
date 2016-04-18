`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin'`

IndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: () ->
    @store.findAll('topic')


`export default IndexRoute`
