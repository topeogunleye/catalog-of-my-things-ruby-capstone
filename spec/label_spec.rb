require_relative '../classes/book'
# require_relative '../classes/items'
require_relative '../classes/label'

describe Label do
  before :all do
    @label = Label.new('new', 'red')
    @book = Book.new('jake', 'candid', 'bad', 'used', '1992-02-02')
  end

  it 'should take an instance of the Item class as an input' do
    @label.add_item(@book)

    expect(@book).to be_an_instance_of Book
  end

  #   it 'should return true if parents method returns true OR if cover_state equals to "bad"' do
  #     expect(@book.can_be_archived?).to eq(true)
  #   end

  #   it 'otherwise, it should return false' do
  #     @book = Book.new('jake', 'candid', 'good', 'used', '2020-02-02')
  #     expect(@book.can_be_archived?).to eq(false)
  #   end
end
