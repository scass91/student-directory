def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  cohorts = []
  students.each {|student| cohorts.push(student[:cohort])}
    cohorts.uniq.each do |cohort|
      puts "Student cohort: #{cohort}"
      students.map do |student|
        puts "#{student[:name].center(50)}" if student[:cohort] == cohort
      end
    end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(50)
end

def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  # create an empty array
  students = []
  # get the first name
  name = gets.tr("\r\n", "")
  puts "Enter a cohort for the student, to finish, just hit return twice"
  cohort = gets.tr("\r\n", "")
  if cohort == ""
    cohort = "January"
  end
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort.to_sym, age: :"27 years old,", location: :London}
# I feel like this bit is quite messy!
    if students.count == 1
      puts puts "Now we have #{students.count} student".center(50)
    else
    puts "Now we have #{students.count} students".center(50)
  end
    # get another name from the user
    name = gets.tr("\r\n", "")
    cohort = gets.tr("\r\n", "")
    if cohort == ""
      cohort = "January"
    end
  end
  # return the array of students
  if students.size > 0
    students
  else puts ""
  end
end

students = input_students
print_header
print(students)
print_footer(students)
