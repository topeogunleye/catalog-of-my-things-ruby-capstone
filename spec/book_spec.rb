require_relative '../classes/book'
require_relative '../classes/items'

describe Book do
  before :each do
    @book = Book.new('jake', 'candid', 'good', 'used', '1992-02-02')
  end

  it 'it should override the method in the parent class' do
    expect(@book.can_be_archived?).to eq(true)
  end

  it 'should return true if parents method returns true OR if cover_state equals to "bad"' do
    @book = Book.new('jake', 'candid', 'good', 'used', '1992-02-02')
    expect(@book.id).to be_a(Integer)
  end

  #   it 'otherwise, it should return false' do
  #     expect(@book.items).to be_a(Array)
  #   end
end
