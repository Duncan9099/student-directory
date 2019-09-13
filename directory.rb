
# # we print the purpose of the program as a header
def print_header
  puts "The students of Villains Academy"
  puts "================================"
end
# # we print the list of students
def print(names)
  names.each.with_index(1) { |student, index| puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort) - #{student[:nationality]}, #{student[:height]}cm" }
end
# # we print the total number of students
def print_footer(names)
  if names.count == 1
    puts "Overall we have #{names.count} great student"
  else
    puts "Overall we have #{names.count} great students"
  end
end
# # finally, we print the methods out to run the program
def input_students
  puts "Please enter the names of the students".center(50, "******")
  puts "To finish, just hit return four times".center(50, "******")
  # creates an empty array
  students = []
  # gets the first names
  name = gets.strip
  # while teh name is not empty, repeat this code
  while !name.empty? do
    cohort_dates = [:january, :march, :june, :august, :november]

    puts "\n" + "Please enter the cohort of the student".center(50, "--------")
    cohort = gets.chomp.downcase.to_sym

    while !cohort_dates.include?(cohort) do
      puts "Please re-enter cohort of student"
      cohort = gets.chomp.downcase.to_sym
    end

    puts "\n" + "Please enter the Nationality of the student".center(50, "--------")
    nationality = gets.chomp

    if nationality.empty?
      nationality = "British"
    end

    puts "\n" + "Please enter the height of the student in cm".center(50, "--------")
    height = gets.chomp

    # add the student hash to the array
    if name.start_with?("D") && name.length < 12
      students << {name: name, cohort: cohort, nationality: nationality, height: height }
      if students.count == 1
        puts "Now we have #{students.count} student"
      else
        puts "Now we have #{students.count} students"
      end
    # get another name from the user
    else
      nil
    end
    puts "\n" + "Please enter the names of the student".center(50, "******")
    name = gets.chomp
  end
  # return the array of students
  students.sort_by do |hash|
    hash[:cohort]
  end
end

students = input_students
if !students.empty?
  print_header
  print(students)
  print_footer(students)
else
  nil
end
