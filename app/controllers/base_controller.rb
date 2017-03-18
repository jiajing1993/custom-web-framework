$logger.info("Required: #{File.basename(__FILE__)}")

require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'response')

class BaseController
  attr_reader :env
  def initialize(env)
    $logger.info("Initializing: #{Module.nesting.first}")
    @env = env
  end
end
