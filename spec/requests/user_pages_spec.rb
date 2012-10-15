require 'spec_helper'
require 'requests_helper'

describe "User pages" do

  describe "edit page" do
    #let(:user) { FactoryGirl.create(:user) }
    before(:each) do
			signed_in_user
			get edit_user_registration_path
		end

		context "should move to update profile page" do
			it "should get OK responce" do
				response.status.should be(200)
			end

			it "should have signed in user" do
				pending
				page.should have_content "Welcome"
			end

			it "should be edit page" do
				pending
				page.should have_content "Update your profile"
			end
      #it pending { should have_selector('title', text: "Update your profile") }
      #it { should have_link('change', href: 'http://gravatar.com/emails') }
    end

    context "with invalid information" do
      before { click_button "Save changes" }

      xit { should have_content('error') }
    end
	end
	
	describe "profile page" do

    let(:user) { FactoryGirl.create(:user) }
		let(:cafe) { FactoryGirl.create(:cafe) }
    let!(:r1) { FactoryGirl.create(:review, user: user, cafe: cafe, content: "Foo") }
    let!(:r2) { FactoryGirl.create(:review, user: user, cafe: cafe, content: "Bar") }

    before { visit user_path(user) }

    xit { should have_selector('h1',    text: user.name) }
    xit { should have_selector('title', text: user.name) }

    context "have reviews" do
      xit { should have_content(r1.content) }
      xit { should have_content(r2.content) }
      xit { should have_content(user.reviews.count) }
    end
  end
end