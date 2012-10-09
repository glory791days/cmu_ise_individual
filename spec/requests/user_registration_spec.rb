require "spec_helper"

describe "user registration" do
  it "allows new users to register with valid name, email address and password" do
    visit "/users/sign_up"

		fill_in "Name",                  :with => "Test User"
    fill_in "Email",                 :with => "alindeman@example.com"
    fill_in "Password",              :with => "ilovegrapes"
    fill_in "Password confirmation", :with => "ilovegrapes"

    click_button "Sign up"

    page.should have_content("Welcome Test User!")
	end

	it "does not allow new user to register with invalid name" do
	  visit "/users/sign_up"

		fill_in "Name",                  :with => ""
    fill_in "Email",                 :with => "alindeman@example.com"
    fill_in "Password",              :with => "ilovegrapes"
    fill_in "Password confirmation", :with => "ilovegrapes"

    click_button "Sign up"

    page.should have_content("Name can't be blank")
	end
end