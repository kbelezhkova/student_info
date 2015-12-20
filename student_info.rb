def school_name
  print "What is the school name?"
  name = gets.chomp
  
  hash = {"name" => name, "students" =>Array.new}
  return hash
end

def add_student_info
  puts "What is the student's name?"
  student_name = gets.chomp
  
  puts "What is the student's number?"
  student_number = gets.chomp.to_i
  
  hash = {"name" => student_name, "student_number" => student_number}
  return hash
end 

def print_separator(character = "_")
  puts character * 80
end

def print_list(list)
  puts "School Name: #{list['name']}"
  print_separator()
  
  list["students"].each do |person|
    puts "\tStudent Name: " + person['name'] + "\t\t\t" +
    "Student Number: " + person['student_number'].to_s
  end
  print_separator()
end


list = school_name

puts "Add student information: "
list['students'].push(add_student_info)
list['students'].push(add_student_info)
list['students'].push(add_student_info)

puts "Here is the student information: \n"

print_list(list)