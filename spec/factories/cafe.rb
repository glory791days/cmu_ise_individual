require 'factory_girl'

FactoryGirl.define do
	factory :cafe do
		name "Cafe Test"
		place "university center"
		category "Cafe"
		price "3"
		time "5"
	end
end