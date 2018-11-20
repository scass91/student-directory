@students = [] # an empty array accessibly to all methods

def save_students
  # open the file for writing
  # "w" relates to write only permissions
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} #{student[:age]} #{student[:location]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  # get the first name
  name = gets.chomp
  puts "Enter a cohort for the student, to finish, just hit return twice"
  cohort = gets.chomp
  if cohort == ""
    cohort = "January"
  end
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: cohort, age: :"27 years old,", location: :London}
    if @students.count == 1
       puts puts "Now we have #{@students.count} student".center(50)
     else
    puts "Now we have #{@students.count} students".center(50)
    end
    # get another name from the user
    name = gets.chomp
    cohort = gets.chomp
    if cohort == ""
      cohort = "January"
    end
  end
  # return the array of students
  if @students.size > 0
    @students
  else puts ""
  end
end

interactive_menu
