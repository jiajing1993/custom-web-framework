$logger.info("Required: #{File.basename(__FILE__)}")

class Custom < BaseController
  def initialize(env)
    $logger.info("Initializing: #{Module.nesting.first}")
    super(env)
  end

  def index
    Response.new.tap do |response|
      response.body = "Hello World"
      response.status_code = 200
    end
  end

  def show
    Response.new.tap do |response|
      response.body = "Catchall Route"
      response.status_code = 200
    end
  end
end
