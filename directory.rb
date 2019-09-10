student_count = 11
# first we create an array of the students
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
# we print the purpose of the program as a header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# we print the list of students
def print(names)
  names.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end
# we print the total number of students
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end
# finally, we print the methods out to run the program
print_header
print(students)
print_footer(students)
