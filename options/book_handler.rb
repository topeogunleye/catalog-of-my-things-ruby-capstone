require_relative '../classes/book'

class BookHandler
  def initialize
    @file_data = nil
    @new_book = nil
    @destructured_array = nil
  end

  #   def load_file
  #     file_to_load = File.read('books.json')
  #     JSON.parse(file_to_load)
  #   end

  #   def files_to_load
  #     load_files unless File.file?('books.json') == false
  #   end

  def create_file
    new_file = File.new('books.json', 'w')
    new_file.puts(JSON.pretty_generate([]))
    new_file.close
  end

  def read_file_if_it_exists
    create_file unless File.file?('books.json')
    @file_data = File.read('books.json')
  end

  def append_to_array
    @destructured_array = JSON.parse(@file_data)

    @destructured_array << @new_book
  end

  def preserve_data
    read_file_if_it_exists
    append_to_array

    File.open('books.json', 'w') do |f|
      f.puts JSON.pretty_generate(@destructured_array)
    end
  end

  def create_new_book
    print 'Author: '
    author = gets.chomp

    print 'Publisher : '
    publisher = gets.chomp

    print 'Cover State : '
    cover_state = gets.chomp

    print 'Label : '
    label = gets.chomp

    print 'Publish Date: '
    publish_date = gets.chomp

    @new_book = Book.new(author, publisher, cover_state, label, publish_date)
    preserve_data

    puts 'Book created sucessfully'
  end
end
