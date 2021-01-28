# Here is the method to get user input
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "what is your hobby"
  hobby = gets.chomp
  hobby = "undefined" if hobby.empty?
  #get another name from the user
  puts "where you from"
  country = gets.chomp
  country = "undefined" if country.empty?
  puts "what is your height"
  height = gets.chomp
  height = "undefined" if height.empty?
  # while the name is not empty, repeat this code
  puts "what is your cohort"
  cohort = gets.chomp
  cohort = "november" if cohort.empty?
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort, hobby: hobby, country: country, height: height}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    break if name.empty?
    puts "what is your hobby"
    hobby = gets.chomp
    hobby = "undefined" if hobby.empty?
    #get another name from the user
    puts "where you from"
    country = gets.chomp
    country = "undefined" if country.empty?
    puts "what is your height"
    height = gets.chomp
    height = "undefined" if height.empty?
    puts "what is your cohort"
    cohort = gets.chomp
    cohort = "november" if cohort.empty?
  end
  students
end
# Here we define the methods to print the name
def print_header
  puts "The students of Villains Academy".center(148)
  puts "-------------".center(148)
end
def print(students)
  student_counter = 1
  index = 0
  while index <= students.length - 1
    new_array = students[index]
      puts "#{student_counter} #{new_array[:name]} (#{new_array[:cohort]} cohort) (hobby: #{new_array[:hobby]}) (country: #{new_array[:country]}) (height(feet): #{new_array[:height]})".center(148)
    student_counter += 1
    index += 1
  end
end
def print_footer(students)
  puts "-------------".center(148)
  puts "Overall, we have #{students.length} great students".center(148)
end
# Here we call the methods
students = input_students
if students.length < 1
  return nil
else
  print_header
  print(students)
  print_footer(students)
end