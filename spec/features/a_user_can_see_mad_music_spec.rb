require 'rails_helper'

describe 'a user can see music' do

  before do
    user = User.create(name: 'mitch')
    allow_any_instance_of(ApplicationController)
    .to receive(:current_user).and_return(user)
    visit mad_path
  end

  it 'can see the mood' do
    expect(page).to have_content("mad")
  end
end
