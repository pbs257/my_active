require_relative "../lib/app_helper"
require_relative "../lib/app_lib"

puts "<table>"
Customer.all.each do |c|
  puts "<tr><td>#{c.name}</td><td> #{c.id}</td></tr>"
end
puts "</table>"