`import Ember from 'ember'`

PlusOneButtonComponent = Ember.Component.extend
  ajax: Ember.inject.service('ajax')
  actions:
    trigger: ->
      @get('ajax').request( "/vote/#{@get('model.id')}",
        method: if @get('plusOne') then 'DELETE' else 'POST'
      ).then =>
        @get('model').fetch()

      @toggleProperty('plusOne')


`export default PlusOneButtonComponent`
