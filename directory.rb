# here we put all the students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# Here we define the methods to print the name
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(names)
  names.each { |name|
    puts name }
end
def print_footer(names)
  puts "Overall, we have #{names.length} great students"
end
# Here we call the methods
print_header
print(students)
print_footer(students)