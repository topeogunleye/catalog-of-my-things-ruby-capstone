require 'date'

class Item
  attr_reader :id, :genre, :author, :label
  
  def initialize(publish_date)
    @id = rand(1..1000)
    @published_date = Date.parse(publish_date)
    @archived = false
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def can_be_archived?
    # should return true if published_date is older than 10 years
    Time.now - @published_date > 10_000_000
  end
end