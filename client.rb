require 'socket'

server_connection = TCPSocket.new('127.0.0.1', 2000)

puts "Sending a message to the server:"
server_connection.puts(ARGV)

puts "Waiting for a message...\n\n"
response_from_server = server_connection.gets

puts "Message from the server: #{response_from_server}"
server_connection.close
