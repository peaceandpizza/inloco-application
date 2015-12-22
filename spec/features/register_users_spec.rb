require 'rails_helper'

RSpec.feature "SpecificationTests", type: :feature do
  it "should render a login screen with 2 fields, user and password as well as a button for logging in" do
    visit :login

    within "#new_user" do
      expect(page).to have_selector("input[name='user[email]']")
      expect(page).to have_selector("input[name='user[password]']")
      expect(page).to have_selector("input[name='commit']")
    end

  end
  
  it "should successfully register a user if he fills the form accordingly" do
    visit :register
    user = create(:user)
    within "#new_user" do
      fill_in "user_email", with: user.email
      fill_in "user_password", with: user.password
      find('input[name="commit"]').click
    end

    expect( User.count ).to eq(1)
    expect( User.first.email ).to eq(user.email)

  end
end
