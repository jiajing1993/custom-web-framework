require 'bundler'
Bundler.require
require 'logger'
File.open('log/debug.log', 'w') {} unless File.exists?('log/debug.log')
$logger = Logger.new(File.join(File.dirname(__FILE__), 'log', 'debug.log'))
require File.join(File.dirname(__FILE__), 'lib', 'my_rack')
require File.join(File.dirname(__FILE__), 'lib', 'request_controller')
MyRackApplication = MyRack.new

require File.join(File.dirname(__FILE__), 'config', 'routes')
run RequestController.new
