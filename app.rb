require 'a_series_of_tubes'
require 'rack'

Dir["./controllers/*.rb"].each {|file| require file }
Dir["./models/*.rb"].each {|file| require file }
Dir["./config/*.rb"].each {|file| require file }

server_app = Proc.new do |env|
  request = Rack::Request.new env
  response = Rack::Response.new
  TUBES.run request, response
  response.finish
end

Rack::Server.start app: server_app, Port: ENV['PORT']
