def input_students
  puts "NOTE - To finish, type 'stop'"

  students = []

  while true do
    puts "Please enter the name of a student."
    name = gets.chomp

    if name == "stop" 
      break
    elsif name.empty?
      name = "placeholder"
    end

    puts "Please enter the cohort of a student."
    cohort = gets.chomp

    if cohort == "stop" 
      break
    elsif cohort.empty?
      cohort = "placeholder"
    end

    students << {name: name, cohort: cohort.to_sym, country_of_birth: :netherlands}
    puts "Now we have #{students.count} students"
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
    puts "#{x + 1}." + "#{names[x][:name]}".center(20) + "(#{names[x][:cohort]} cohort)".center(20) + "(#{names[x][:country_of_birth]})".center(20)
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