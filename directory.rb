# here we put all the students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
# Here we define the methods to print the name
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each { |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    }
end
def print_footer(students)
  puts "Overall, we have #{students.length} great students"
end
# Here we call the methods
print_header
print(students)
print_footer(students)