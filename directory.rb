def print_header
  puts "The students of Villains Academy"
  puts "================================"
end

def print_student_list
  @students.each.with_index(1) { |student, index| puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort) - #{student[:nationality]}, #{student[:height]}cm" }
end

def print_footer
  if @students.count == 1
    puts "Overall we have #{@students.count} great student"
  else
    puts "Overall we have #{@students.count} great students"
  end
end

def input_students
  puts "Please enter the names of the students".center(50, "******")
  puts "To finish, just hit return four times".center(50, "******")
  # students = []
  name = gets.strip
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

    if name.start_with?("D") && name.length < 12
      @students << {name: name, cohort: cohort, nationality: nationality, height: height }
      if @students.count == 1
        puts "Now we have #{@students.count} student"
      else
        puts "Now we have #{@students.count} students"
      end
    else
      nil
    end
    puts "\n" + "Please enter the names of the student".center(50, "******")
    name = gets.chomp
  end
  @students.sort_by do |hash|
    hash[:cohort]
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:nationality], student[:height]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort, nationality, height = line.chomp.split(',')
      @students << {name: name, cohort: cohort.to_sym, nationality: nationality, height: height}
  end
  file.close
end

@students = []
interactive_menu

# students = input_students
# if !students.empty?
#   print_header
#   print(students)
#   print_footer(students)
# else
#   nil
# end
