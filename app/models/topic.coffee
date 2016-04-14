`import Model from 'ember-data/model'`
`import DS from 'ember-data'`

Topic = Model.extend
  title: DS.attr()
  description: DS.attr()
  votes: DS.attr('number')


`export default Topic`
