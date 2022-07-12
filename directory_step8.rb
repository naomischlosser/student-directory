def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp.capitalize

  while !name.empty? do
    students << {name: name, cohort: :november}
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
  puts "Please enter the initial you would like to search for"
  letter = gets.chomp.capitalize
  
  names.each_with_index do |name, i|
    if name[:name][0] == letter
      puts "#{i + 1}. #{name[:name]} (#{name[:cohort]} cohort)"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)