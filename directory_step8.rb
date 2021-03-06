def input_cohort
  default_cohort = :January
  puts "please enter your cohort month"
  cohort = gets.strip.downcase
  case cohort
    when "january"
      cohort = :January
    when "february"
      cohort = :February
    when "march"
      cohort = :March
    when "april"
      cohort = :April
    when "may"
      cohort = :May
    when "june"
      cohort = :June
    when "july"
      cohort = :July
    when "august"
      cohort = :August
    when "september"
      cohort = :September
    when "october"
      cohort = :October
    when "november"
      cohort = :November
    when "december"
      cohort = :December
    when ""
      puts "unrecognized, cohort set to default (#{default_cohort})"
      cohort = default_cohort
    else
      puts "unrecognized, cohort set to default (#{default_cohort})"
      cohort = default_cohort
  end
end

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.strip
  puts "what is your hobby"
  hobby = gets.strip
  hobby = "undefined" if hobby.empty?
  #get another name from the user
  puts "where you from"
  country = gets.strip
  country = "undefined" if country.empty?
  puts "what is your height(cm)"
  height = gets.strip
  height = "undefined" if height.empty?
  # while the name is not empty, repeat this cod  e
  cohort = input_cohort
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort, hobby: hobby, country: country, height: height}
    puts "Now we have #{students.count} students"
    name = gets.strip
    break if name.empty?
    puts "what is your hobby"
    hobby = gets.strip
    hobby = "undefined" if hobby.empty?
    #get another name from the user
    puts "where you from"
    country = gets.strip
    country = "undefined" if country.empty?
    puts "what is your height(cm)"
    height = gets.strip
    height = "undefined" if height.empty?
    cohort = input_cohort
  end
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print_list(students)
  student_counter = 1
  index = 0
  while index <= students.length - 1
    new_array = students[index]
      puts "#{student_counter} #{new_array[:name]} (#{new_array[:cohort]} cohort) (hobby: #{new_array[:hobby]}) (country: #{new_array[:country]}) (height(cm): #{new_array[:height]})".center(50)
    student_counter += 1
    index += 1
  end
end

def print_by_cohort(students)
  if students.empty?
    puts "No students".center(50)
  else
    cohort_sort = students.map do |student|
      student[:cohort]
    end
    puts "-------------".center(50)
    cohort_sort.uniq.each do |cohort|
      puts "---- #{cohort} Cohort ----".center(50)
      students.each do |student|
        puts "#{student[:name]} (hobby: #{student[:hobby]}) (country: #{student[:country]}) (height(cm): #{student[:height]})" if student[:cohort] == cohort
      end
    end
  end
end

def print_footer(students)
  puts "-------------".center(50)
  puts "Overall, we have #{students.length} great students".center(50)
end

students = input_students
if students.length < 1
  return nil
else
    print_header
    print_list(students)
    print_by_cohort(students)
    print_footer(students)
end