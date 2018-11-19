def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
# create an empty array - fixed this from default code which had a % instead of a #
# also changed braces to square brackets
  students = []
# get the first name - fixed this from default code which had a % insetad of a #
# removed space between gets and .chomp
  name = gets.chomp
# while the name is not empty, repeat this code - fixed this from default code which had a % insetad of a #
# replaced when with while, added ? to .empty and ! to return not-empty
# For whoever may read this, this exclamation mark missing was the last error!
  while !name.empty? do
# add the student hash to the array - fixed this from default code which had a % insetad of a #
# fixed shovel operator to add a <, add inputs to hash
    students << {:name => name, :cohort  => :"November"}
# changed from student.count to students.count
    puts "Now we have #{students.count} students"
# gets another name from the user- fixed this from default code which had a % insetad of a #
    name = gets.chomp
  end
# return the array of students - fixed this from default code which had a % insetad of a #
  students
end

# changed function name to have an underscore instead of a dash
def print_header
# changed the final apostrophe to speech marks to reflect the initial string marker
# changed put to puts
  puts "The students of my cohort at Makers Academy"
# replaced backticks with quotation marks
  puts "-------------"
end

def print(students)
# replaced slashes with pipes, student with students
  students.each do |student|
    puts "#{student[:name]}, #{student[:cohort]} cohort"
  end
end

# made print_footer correctly take an argument
def print_footer(students)
# added #, changed prints to puts
  puts "Overall, we have #{students.count} great students"
end

# changed to underscore from dash
students = input_students
print_header
# changed braces to brackets
print(students)
# changed square brackets to brackets
print_footer(students)
