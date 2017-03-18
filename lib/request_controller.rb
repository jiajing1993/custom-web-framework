$logger.info("Required: #{File.basename(__FILE__)}")

class RequestController
  def initialize
    $logger.info("Initializing: #{Module.nesting.first}")
  end

  def call(env)
    route = MyRackApplication.router.route_for(env)
    if route
      response = route.execute(env)
      return response.rack_response
    else
      [404, {}, ["error"]]
    end
  end
end
