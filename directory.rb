@students = []
# Here is the method to get user input
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  # return the array of students
  @students
end
# Here we define the methods to print the name
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print_list
  @students.each_with_index { |student, index|
    puts "#{student[index]} #{student[:name]} (#{student[:cohort]} cohort)"
    }
end
def print_footer
  puts "Overall, we have #{@students.length} great students"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
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
# Here we call the methods
interactive_menu