def exit
  puts 'Goodbye'
end

def menu
  puts 'Select an option: '
  puts '1 - List books', '2 - List people', '3 - Create person', '4 - Create book', '5 - Create rental',
       '6 - List rentals by person_id', '7 - exit'
end

def run
  menu
  choice = gets.chomp.to_i
  case choice
  when 1
    puts 'List books'
  when 2
    puts 'List people'
  when 3
    puts 'Create person'
  when 4
    puts 'Create book'
  when 5
    puts 'Create rental'
  when 6
    puts 'List rentals by person_id'
  when 7
    exit
  else
    puts 'Invalid option'
  end
end
