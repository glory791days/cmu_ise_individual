require 'spec_helper'

describe User do
	let(:user) { FactoryGirl.create(:user) }

	subject { user }
	attrs = [:name, :email, :reviews]
	attrs.each do |attr|
		it "should respond to #{attr}" do
			should respond_to(attr)
		end
	end

	its(:email) {should == "test.user@test.cmu.edu"}
	it { should be_valid }    #pending

	context "when name is not present" do
		before { user.name = " " }
		it { should_not be_valid }
	end

	context "review associations" do
		let!(:older_review) do
			FactoryGirl.create(:review, user: user, created_at: 1.day.ago)
		end
		let!(:newer_review) do
			FactoryGirl.create(:review, user: user, created_at: 1.hour.ago)
		end

		it "should have the right reviews in right order" do
			user.reviews.should == [newer_review, older_review]
		end

	end
end
