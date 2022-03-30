# Test for genre.rb
require_relative '../classes/genre'

describe Genre do
  it 'should be initialized with a name' do
    genre = Genre.new('Rock')
    expect(genre.name).to eq('Rock')
  end

  it 'should have an id' do
    genre = Genre.new('Rock')
    expect(genre.id).to be_a(Integer)
  end

  it 'should have an array of items' do
    genre = Genre.new('Rock')
    expect(genre.items).to be_a(Array)
  end

  it 'should add items to the items array' do
    genre = Genre.new('Rock')
    item = Item.new('01/01/2000')
    genre.add_item(item)
    expect(genre.items).to include(item)
  end

  it 'should not add items that are not items to the items array' do
    genre = Genre.new('Rock')
    item = 'item'
    genre.add_item(item)
    expect(genre.items).not_to include(item)
  end

  it 'should not add items that are already in the items array' do
    genre = Genre.new('Rock')
    item = Item.new('01/01/2000')
    genre.add_item(item)
    genre.add_item(item)
    expect(genre.items).to include(item)
  end
end
