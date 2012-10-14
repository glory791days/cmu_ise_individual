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

	xit { should be_valid }    #pending

	describe "when name is not present" do
		before { user.name = " " }
		it { should_not be_valid }
	end
end
