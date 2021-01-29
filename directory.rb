require 'csv'
@students = []

# Here is the method to get user input
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  cohort = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    adding_students(name, cohort)
    puts "Now we have #{@students.count} students"
    #get another name from the user
    name = STDIN.gets.chomp
    cohort = STDIN.gets.chomp
  end
  # return the array of students
  @students
end

def adding_students(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
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
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_list
  print_footer
end

def process
  selection = STDIN.gets.chomp
  case selection
    when "1"
      puts "You have chosen to input new students"
      input_students
    when "2"
      puts "You have chosen to show the student list"
      show_students
    when "3"
      save_students
      puts "You have saved the list of students"
    when "4"
      load_students
      puts "You have loaded the list of students"
    when "9"
      puts "You have chosen to exit"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def save_students
  puts "which file do you want?"
  file_to_save = STDIN.gets.chomp
  # open the file for writing
  CSV.open(file_to_save, "wb") do |csv|
  # iterate over the array of students
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv << student_data
    end
  end
end

def load_students
  puts "which file would you like to load?"
  file_to_load = STDIN.gets.chomp
  CSV.foreach(file_to_load) do |row|
      name, cohort = row
      adding_students(name, cohort)
  end
end

def try_load_students(filename = "students.csv")
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

def interactive_menu
  loop do
    print_menu
    process
  end
end
# Here we call the methods
try_load_students
interactive_menu