#!/usr/bin/env ruby

class MainEntryPoint
  def initialize; end

  def display_menu
    puts 'Select an option: '
    puts
    puts ['1 - List Books', '2 - List Music Albums', '3 - List Games', '4 - List Genres', '5 - List Labels',
          '6 - List Authors', '7 - Add Book', '8 - Add Music Album', '9 - Add Game', '10 - Exit App']
  end

  def run
    user_input = nil
    puts 'Welcome to Category of My Things!'
    puts

    while user_input != '7'
      display_menu
      user_input = gets.chomp
    end
  end
end

def run_app
  app = MainEntryPoint.new
  app.run
end

run_app
