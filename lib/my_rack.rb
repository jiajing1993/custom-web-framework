$logger.info("Required: #{File.basename(__FILE__)}")
require File.join(File.dirname(__FILE__), 'router.rb')

class MyRack
  attr_reader :router
  def initialize
    $logger.info("Initializing: #{Module.nesting.first}")
    @router = Router.new
  end
end
