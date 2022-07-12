def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp.capitalize

  while !name.empty? do
    students << {name: name, cohort: :november, country_of_birth: :netherlands}
    puts "Now we have #{students.count} students"
    name = gets.chomp.capitalize
  end

  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  x = 0

  while x < names.length
    puts "#{x + 1}. #{names[x][:name]} (#{names[x][:cohort]} cohort) (#{names[x][:country_of_birth]})"
     x += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)