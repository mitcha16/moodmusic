require 'rails_helper'

describe 'a user can login' do

  before do
    visit root_path
  end

  it 'can see the header' do
    expect(page).to have_content("MoodMusic")
  end

end
