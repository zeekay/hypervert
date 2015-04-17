hypervert = require '../lib'

describe 'hypervert', ->
  template = """
  <h1>Title</h1>
  <p>some body</p>

  <ul>
    <li>a</li>
    <li>b</li>
    <li>c</li>
  </ul>
  """

  it 'should convert html to vtree', ->
    console.log hypervert template
