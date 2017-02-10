require 'rails_helper'

feature 'Welcome' do
  before do

    @email = generate(:email)
    @password = "#{Faker::Internet.password(10, 20, true, true)}A1#"
    @existing_user = User.create(
      email: @email,
      password: @password,
      password_confirmation: @password
    )
    @existing_user.confirm
  end

  scenario 'Welcome page is displayed after login' do
    
    visit '/users/sign_in'
    expect(page).to have_css('h2', text: 'Login')

    fill_in "user_email", :with => @email
    fill_in "user_password", :with => @password
    
    click_button "Log in"
    
    expect(page).to have_content(@email)
    expect(page).to have_css('h1', text: 'Welcome')
    expect(current_path).to eq('/')
  end
end