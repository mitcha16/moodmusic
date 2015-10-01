require 'spec_helper'
require 'json'
describe 'user' do

  before do
    @user = User.create(name: 'Mitch')
  end

  it 'has a name' do
    expect(@user.name).to eq('Mitch')
  end

  it 'can create itself via oath' do
  end
end
