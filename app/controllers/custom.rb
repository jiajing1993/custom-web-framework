$logger.info("Required: #{File.basename(__FILE__)}")
require 'erb'
class Custom < BaseController
  def initialize(env, controller_method)
    $logger.info("Initializing: #{Module.nesting.first}")
    super
  end

  def index
    Response.new.tap do |response|
      response.body = render
      response.status_code = 200
    end
  end

  def show
    @my_variable = "from controller"
    Response.new.tap do |response|
      response.body = render
      response.status_code = 200
    end
  end
end
