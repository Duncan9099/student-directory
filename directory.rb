student_count = 11
# first we create an array of the students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# we print the purpose of the program as a header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# we print the list of students
def print(names)
  names.each { |student| puts student }
end
# we print the total number of students
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end
# finally, we print the methods out to run the program
print_header
print(students)
print_footer(students)
