require_relative './items'

class Genre
  attr_reader :name, :items

  def initialize(name, _items)
    @id = rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_genre(self) unless item.genres.include?(self)
  end
end
