require 'rails_helper'

feature 'Greetings' do
  scenario 'Index page is present' do 
    visit '/'
    expect(page).to have_content("Greetings")
    expect(page).to have_css("h1", text: "Greetings")
  end
end