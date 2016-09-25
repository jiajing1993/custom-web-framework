require 'bundler'
Bundler.require
require File.join(File.dirname(__FILE__), 'lib', 'my_rack')
require File.join(File.dirname(__FILE__), 'lib', 'request_controller')
MyRackApplication = MyRack.new

require File.join(File.dirname(__FILE__), 'config', 'routes')
run RequestController.new
