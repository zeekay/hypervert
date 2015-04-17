fs      = require 'fs'
vm      = require 'vm'

h       = require 'virtual-dom/h'
convert = require 'html2hyperscript'

module.exports = (template, bindings = {}) ->
  code = """
  vtree = #{convert template}
  """

  sandbox =
    h: h

  vm.createContext sandbox
  vm.runInContext code, sandbox

  sandbox.vtree
