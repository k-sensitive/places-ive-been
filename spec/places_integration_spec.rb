require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('places list path', {:type => :feature}) do
  it('verifies the user path from the form to success page') do
    visit('/')
    fill_in('place', :with => 'Portland, Oregon')
    click_button('Add Place')
    expect(page).to have_content('The place has been successfully submitted to your list! Back')
  end
end
