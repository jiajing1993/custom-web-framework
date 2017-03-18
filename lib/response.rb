$logger.info("Required: #{File.basename(__FILE__)}")

class Response
  attr_accessor :status_code, :headers, :body

  def initialize
    $logger.info("Initializing: #{Module.nesting.first}")
    @headers = {}
  end

  def rack_response
    [status_code, headers, Array(body)]
  end
end
