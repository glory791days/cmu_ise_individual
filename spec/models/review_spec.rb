require 'spec_helper'

describe Review do
	let(:user) { FactoryGirl.create(:user) }
	let(:cafe) { Cafe.create(:name => "Cafe Test")}

  before { @review = user.reviews.build(content: "Good cafe", cafe_id: cafe.id) }
  subject { @review }

	attrs = [:star, :content, :user_id, :cafe_id, :price, :time]
	attrs.each do |attr|
		it "should respond to #{attr}" do
			should respond_to(attr)
		end
	end

	its(:user) { should == user }

	context "accessible attributes" do
		it "should not allow access to user_id" do
			expect { Review.new(user_id: user.id) }.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
		end
	end

	context "when user_id is not present" do
		before { @review.user_id = nil }
		it { should_not be_valid }
	end

	context "with blank content" do
		before { @review.content = " "}
		it { should_not be_valid }
	end

  pending "add some examples to (or delete) #{__FILE__}"
end
