require 'socket'
require 'mytest'
include MyTest


server = TCPServer.new(2000)
loop do
  puts "Server waiting for a new connection..."
  client_connection = server.accept
  puts "A client has connected!"

  var1 = client_connection.gets.to_i
  var2 = client_connection.gets.to_i

  client_connection.puts(add(var1, var2))

  client_connection.close
  puts "Closed connection"
end
