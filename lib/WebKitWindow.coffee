{EventEmitter} = require 'events'
WebKitWindow = require('../WebKitWindow').WebKitWindow

WebKitWindow::[key] = val for key, val of EventEmitter::
WebKitWindow::initialize = ->
  fn = => @processEvents()
  setInterval fn, 0
WebKitWindow::resize = WebKitWindow::setSize

module.exports = WebKitWindow