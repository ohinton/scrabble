require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectatopns, false)

describe('how a user can type in their word and get a score', {:type => :feature}) do
  it('processes the user entry word and returns a score') do
    visit('/')
    fill_in('word', :with => 'cat')
    click_button('Send')
    expect(page).to have_content(5)
  end
end
