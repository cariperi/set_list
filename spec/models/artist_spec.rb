require 'rails_helper'

RSpec.describe Artist, type: :model do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
    before(:each) do
      @prince = Artist.create!(name: 'Prince')
      @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8549)
      @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 664, play_count: 3342)
      @sample = @prince.songs.create!(title: 'Sample', length: 1, play_count: 3342)
    end

      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(503.33)
      end
    end
  end
end
