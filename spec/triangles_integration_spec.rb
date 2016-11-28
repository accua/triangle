require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('take three user inputs and output a type of triangle') do
    visit('/')
    fill_in('side1', :with => "4")
    fill_in('side2', :with => "4")
    fill_in('side3', :with => "4")
    click_button('Make Triangle!')
    expect(page).to have_content("equalateral")
  end
end
