`import Ember from 'ember'`

NewTopicBoxComponent = Ember.Component.extend
  store: Ember.inject.service('store')
  init: ->
    @_super()
    @resetTopic()
  resetTopic: ->
    @set('topic', @get('store').createRecord('topic'))
  actions:
    create: ->
      @get('topic').save()
      @resetTopic()
      return


`export default NewTopicBoxComponent`
