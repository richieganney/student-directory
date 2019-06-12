#first we print off the list of students.

students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "Calf-stetching", country_of_birth: :Puerto_Rico},
  {name: "Darth Vader", cohort: :november, hobbies: "Kinslaying", country_of_birth: :Tatooine},
  {name: "Nurse Ratched", cohort: :november, hobbies: "Scalping", country_of_birth: :USA},
  {name: "Michael Corleone", cohort: :november, hobbies: "Tommy-gunning", country_of_birth: :Italy},
  {name: "Alex DeLarge", cohort: :november, hobbies: "Milk-drinking", country_of_birth: :UK},
  {name: "The Wicked Witch of the West", cohort: :november, hobbies: "Melting", country_of_birth: :USA},
  {name: "Terminator", cohort: :november, hobbies: "Destoying things for no reason", country_of_birth: :Germany},
  {name: "Freddy Krueger", cohort: :november, hobbies: "Dream-disturbing", country_of_birth: :USA},
  {name: "The Joker", cohort: :november, hobbies: "Tormenting The Batman", country_of_birth: :USA},
  {name: "Joffrey Baratheon", cohort: :november, hobbies: "Being unliked by everyone", country_of_birth: :Westeros},
  {name: "Norman Bates", cohort: :november, hobbies: "Psycho", country_of_birth: :USA}
]
def input_students
    puts 'Please enter the name of the students, followed by their hobbies, followed by their place of birth.'
    puts 'To finish, just hit return four times.'
    students = []
    name = gets.chomp
    hobby = gets.chomp
    birth_place = gets.chomp
    while true do
      students << {name: name, cohort: :november, hobbies: hobby, country_of_birth: birth_place }
      puts "Now we have #{students.count} student(s)"
      name = gets.chomp
      hobby = gets.chomp
      birth_place = gets.chomp
        break if name.empty?
    end
      students
  end

def print_header
  puts 'The students of Villains Academy'
  puts "-------------"
end
def print(students)
    puts "Enter a letter to print names that begin with that letter."
    puts "To exit, just press enter when promted for a letter."
    while (first_letter = gets.chomp)
    puts "Enter letter:"
      students.each_with_index { |student, index|
          if first_letter.downcase ==  student[:name].downcase[0] && student[:name].length < 12
            puts "#{index +1}. #{student[:name]} (#{student[:cohort]} cohort). Hobbies include #{student[:hobbies]}. Born in #{student[:country_of_birth]}."
            puts "Enter letter:"
          end
      }
    break if first_letter.empty?
    end
  end

def print_footer(names)
  puts "Overall, we have #{names.count} great student(s)."
end

students = input_students
print_header
print(students)
print_footer(students)
