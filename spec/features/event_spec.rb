require 'spec_helper'
describe 'Creating an event' do

  fixtures :users

  before do
    sign_in
  end

  it 'requires admin permission', js:true do
    visit new_event_path
    fill_in 'Title', with: 'Singing'
    click_button 'Create Event'
    page.should have_content("successful")
  end
end