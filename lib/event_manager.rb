puts "EventManager Initialized!"

# puts File.exist? "event_attendees.csv"
# contents = File.read "event_attendees.csv"
# puts contents

# lines.each do |line|
#   puts line
# end

# lines.each do |line|
#   columns = line.split(",")
#   p columns
# end

# lines.each do |line|
#   columns = line.split(",")
#   name = columns[2]
#   p name
# end

# lines.each do |line|
#   next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

# row_index = 2
# lines.each do |line|
#   row_index += 1
#   next if row_index == 3
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

lines = File.readlines "event_attendees.csv"
lines.each_with_index do |line, index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name
end
