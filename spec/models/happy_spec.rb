require 'spec_helper'

describe 'songs' do
  it 'has a song' do
    expect(Happy.new.song).to eq(nil)
  end
end
