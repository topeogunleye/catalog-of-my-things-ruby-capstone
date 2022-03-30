require_relative './items'

class label < Item
  attr_reader :title, :color, :items

  def initialize(title, color)
    @id = rand(1..1000)
    @title = title
    @color = color
  end
  
  def add_item(item)
    @items << item
    item.add_label(self) 
  end

end