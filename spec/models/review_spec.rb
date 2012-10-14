require 'spec_helper'

describe Review do
	let(:user) { User.create(:name => "Test", :email => "test@cmu.edu") }
	let(:cafe) { Cafe.create(:name => "Cafe Test")}

  before { @review = user.reviews.build(content: "Lorem ipsum", cafe_id: cafe.id) }
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

  pending "add some examples to (or delete) #{__FILE__}"
end
