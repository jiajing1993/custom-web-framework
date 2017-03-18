$logger.info("Required: #{File.basename(__FILE__)}")

MyRackApplication.router.config do
  get "/test", to: "custom#index"
  get /.*/, to: "custom#show"
end
