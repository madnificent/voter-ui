`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  session: Ember.inject.service('session')

`export default ApplicationController`
