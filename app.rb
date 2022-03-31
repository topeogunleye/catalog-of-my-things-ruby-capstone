require_relative './options/add_music_album'
require_relative './options/book_handler'

class App
  def initialize
    @book_handler = BookHandler.new
  end

  def add_music_album
    publish_date, on_spotify = music_album_data
    music_album = MusicAlbum.new(publish_date, on_spotify)
    include_genre(music_album)
    convert_to_js(music_album)
    puts 'Music Album created successfully'
  end

  def list_all_music_albums
    File.write('album.json', '[]') unless File.exist? 'album.json'
    albums = JSON.parse(File.read('album.json'))
    if albums.empty?
      puts '----No albums added yet, please add albums----'
    else
      puts '-----------------------------------------'
      albums.each_with_index do |album, index|
        puts "#{index + 1}) ID:#{album['id']}, publish date: #{album['publish_date']},
      on spotify: #{album['on_spotify']}, genre: #{album['genre']}"
      end
      puts '-----------------------------------------'
    end
  end

  def list_all_genres
    File.write('album.json', '[]') unless File.exist? 'album.json'
    albums = JSON.parse(File.read('album.json'))
    if albums.empty?
      puts '----No genres added yet----'.colorize(:red)
    else
      puts '-----------------------------------------'
      albums.each_with_index do |album, index|
        puts "#{index + 1}) Genre name: #{album['genre']}"
      end
      puts '-----------------------------------------'
    end
  end

  def add_book
    @book_handler.create_new_book
  end
end
