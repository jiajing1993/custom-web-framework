class RequestController
  def call(env)
    MyRackApplication.logger.info("#{self.class}: initialize")
    route = MyRackApplication.router.route_for(env)
    if route
      response = route.execute(env)
      return response.rack_response
    else
      [404, {}, ["error"]]
    end
  end
end
