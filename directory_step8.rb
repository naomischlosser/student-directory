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
  names.each_with_index do |name, i|
    if name[:name].size < 12
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