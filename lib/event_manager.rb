require 'csv'

puts "EventManager Initialized!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  full_name = (row[:first_name] + " #{row[:last_name]}")
  if row[:zipcode] == nil
    zipcode = "00000"
  elsif row[:zipcode].size < 5
    while row[:zipcode].size < 5
      zipcode = row[:zipcode].prepend("0")
    end
  elsif row[:zipcode].size > 5
    zipcode = row[:zipcode][0..4]
  else
    zipcode = row[:zipcode]
  end
  zip = zipcode
  # name = (row[:first_name] + " " + row[:last_name])
  # puts "Name: #{full_name}, Zip: #{zipcode}"
  puts full_name.to_s + " " + zip.to_s
  # puts zipcode
end
# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   full_name = (row[:first_name] + " #{row[:last_name]}")
#   zipcode = row[:zipcode]
#   # name = (row[:first_name] + " " + row[:last_name])
#   # puts "Name: #{full_name}, Zip: #{zipcode}"
#   puts full_name.to_s + " " + zipcode.to_s
#   # puts zipcode
# end
#
# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = (row[:first_name] + " #{row[:last_name]}")
#   # name = (row[:first_name] + " " + row[:last_name])
#   puts name
# end

###pre work###
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

# row_index = 0
# lines.each do |line|
#   row_index += 1
#   next if row_index == 1
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

# lines = File.readlines "event_attendees.csv"
# lines.each_with_index do |line, index|
#   next if index == 0
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end
