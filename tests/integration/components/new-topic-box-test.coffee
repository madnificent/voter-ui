`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'new-topic-box', 'Integration | Component | new topic box', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{new-topic-box}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#new-topic-box}}
      template block text
    {{/new-topic-box}}
  """

  assert.equal @$().text().trim(), 'template block text'
