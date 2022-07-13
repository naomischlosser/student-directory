def input_students
  puts "Please enter the name and cohort of the students seperated by a comma, e.g. 'Sarah Allen, January'"
  puts "If you made a mistake, please enter 'typo' to go again"
  puts "To finish, just hit return twice"

  students = []
  input = gets.chomp.split(",")

  while !input.empty? do
    name = input[0]
    cohort = input[1]

    if name.empty?
      puts "No name has been given and 'placeholder' is added instead"
      name = "placeholder"
    end

    if cohort.nil?
      puts "No cohort has been given and 'placeholder' is added instead"
      cohort = "placeholder"
    else
      cohort.strip!
    end

    students << {name: name, cohort: cohort.to_sym, country_of_birth: :netherlands}
    puts "Now we have #{students.count} students"

    input = gets.chomp.split(",")

    if input[0] == "typo"
      students.pop
      input = gets.chomp.split(",")
    end
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