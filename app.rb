# app.rb
require 'rubygems'
require 'webrick'

# Configure the server to listen on port 8082
server = WEBrick::HTTPServer.new(Port: 8082)

# Define a root route that responds with "Hello World"
server.mount_proc '/' do |req, res|
  res.body = 'Hello World'
end

# Handle Ctrl+C to gracefully shut down the server
trap 'INT' do
  server.shutdown
end

# Start the server
server.start
