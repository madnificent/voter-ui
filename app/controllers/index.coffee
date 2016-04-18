`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  filteredTopics: Ember.computed.filterBy 'model', 'isNew', false
  topics: Ember.computed.sort 'filteredTopics', (a,b) ->
    a = a.get('votes') or 0
    b = b.get('votes') or 0
    console.log("#{a} vs #{b} ")
    if a < b then 1 else -1

`export default IndexController`
