$logger.info("Required: #{File.basename(__FILE__)}")

require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'response')

class BaseController
  attr_reader :env, :controller_method
  def initialize(env, controller_method)
    $logger.info("Initializing: #{Module.nesting.first}")
    @env = env
    @controller_method = controller_method
  end

  def render
    path = File.join(File.dirname(__FILE__), '..', 'views', "#{self.class.to_s.downcase}s", "#{controller_method}.html.erb")
    template = File.read(path)
    ERB.new(template).result(binding)
  end
end
