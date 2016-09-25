require File.join(File.dirname(__FILE__), 'router.rb')
require 'logger'
class MyRack
  attr_reader :router
  def initialize
    @router = Router.new
    @logger = Logger.new(File.join(File.dirname(__FILE__), '..', 'tmp','debug.log'))
    @logger.info("initialize MyRack")
  end

  def logger
    @logger
  end
end
