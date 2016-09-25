require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'response')

class BaseController
  attr_reader :env
  def initialize env
    MyRackApplication.logger.info("#{self.class}: initialize")
    @env = env
  end
end
