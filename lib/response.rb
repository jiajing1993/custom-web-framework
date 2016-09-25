class Response
  attr_accessor :status_code, :headers, :body

  def initialize
    MyRackApplication.logger.info("#{self.class}: initialize")
    @headers = {}
  end

  def rack_response
    [status_code, headers, Array(body)]
  end
end
