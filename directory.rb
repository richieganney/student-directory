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
@students = []
def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items  
end
def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
    end
end
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
   end
end

def input_students
  puts 'Please enter the name of the students, followed by their cohort month, hobbies and place of birth.'
  puts 'To finish, just hit return five times.'
  name = gets.chomp
  cohort = gets.chomp
  hobby = gets.chomp
  birth_place = gets.chomp
  while true do
    @students << {name: name, cohort: cohort.to_sym, hobbies: hobby, country_of_birth: birth_place }
    puts @students.count > 1 ? "Now we have #{@students.count} students" : "Now we have #{@students.count} student"
    name = gets.chomp
    cohort = gets.chomp
    hobby = gets.chomp
    birth_place = gets.chomp
      break if name.empty?
  end
end

def print_students_list
  puts "Enter a cohort month to print out the students belonging to that cohort."
  puts "Just type 'exit' then press enter to exit."
    while (cohort_input = gets.chomp)
      puts "Enter cohort month:"
      @students.each_with_index { |student, index|
      if student[:cohort].to_s.downcase == cohort_input.downcase && student[:name].length < 12
        puts "#{index +1}. #{student[:name].capitalize} (#{student[:cohort].capitalize} cohort). Hobbies include #{student[:hobbies]}. Born in #{student[:country_of_birth].capitalize}.".center(100)
        puts "Enter cohort month:"
      end
      }
    break if cohort_input == 'exit'
    end
end

def print_header
  puts 'The students of Villains Academy'
  puts "-------------"
end
def print_footer
  puts "Overall, we have #{@students.count} great student(s)."
end
def show_students
  print_header
  print_students_list
  print_footer
end

interactive_menu
students = input_students
show_students
