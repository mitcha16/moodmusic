require 'spec_helper'

describe 'excited songs' do
  it 'has a song' do
    expect(Excited.new.song).to eq(nil)
  end
end
