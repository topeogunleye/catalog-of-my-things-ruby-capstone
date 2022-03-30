# Test for music_album.rb
require_relative '../classes/music_album'

describe MusicAlbum do
  it 'should be initialized with a publish date' do
    album = MusicAlbum.new('01/01/2000', false)
    expect(album.publish_date).to eq('01/01/2000')
  end

  it 'should be initialized with a boolean for on_spotify' do
    album = MusicAlbum.new('01/01/2000', false)
    expect(album.on_spotify).to eq(false)
  end

  it 'should have an id' do
    album = MusicAlbum.new('01/01/2000', false)
    expect(album.id).to be_a(Integer)
  end

  it 'should return true if parents method returns true and if on_spotify equals true' do
    album = MusicAlbum.new('01/01/2000', true)
    expect(album.on_spotify?).to eq(true)
  end
end
