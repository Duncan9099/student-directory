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
# then we print the list of students
puts "The students of Villains Academy"
puts "-------------"
students.each { |student| puts student }
# finally, we print the total number of students
puts "Overall we have #{students.count} great students"
