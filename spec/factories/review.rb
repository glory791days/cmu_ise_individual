require 'factory_girl'

FactoryGirl.define do
	factory :review do
		sequence(:cafe_id) {|n| n}
		sequence(:content) {|n| "test review #{n}"}
		user
		cafe
	end
end