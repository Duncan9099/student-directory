# student_count = 11
# # first we create an array of the students
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]
# # we print the purpose of the program as a header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# # we print the list of students
def print(names)
  # count = 1
  names.each.with_index(1) { |student, index| puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort) - #{student[:degree]}, #{student[:nationality]}, #{student[:height]}" }
  # until count == names.length do
  #   if names.empty?
  #     break
  #   else
  #     puts "#{name} (#{names[:cohort]} cohort)"
  #   end
  # count += 1
  # end
end
# # we print the total number of students
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end
# # finally, we print the methods out to run the program
def input_students
  puts "Please enter the names of the students".center(50, "--------")
  puts "To finish, just hit return four times".center(50, "--------")
  # creates an empty array
  students = []
  # gets the first names
  name = gets.chomp
  puts "\n" + "Please enter the Major of the student".center(50, "--------")
  degree = gets.chomp
  puts "\n" + "Please enter the Nationality of the student".center(50, "--------")
  nationality = gets.chomp
  puts "\n" + "Please enter the height of the student in cm".center(50, "--------")
  height = gets.chomp
  # while teh name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    if name.start_with?("D") && name.length < 12
      students << {name: name, cohort: :november, degree: degree, nationality: nationality, height: height }
      puts "Now we have #{students.count} students"
    # get another name from the user
    else
      nil
    end
    name = gets.chomp
    degree = gets.chomp
    nationality = gets.chomp
    height = gets.chomp
  end
  # return the array of students
  students
end

students = input_students
print_header
print(students)
print_footer(students)
