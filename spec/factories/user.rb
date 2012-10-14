require 'factory_girl'

FactoryGirl.define do
	factory :user do
		name "Test User"
		#sequence(:name) { |n| 'Test #{n}' }
		email { "#{name}@test.cmu.edu".downcase.gsub(/\s/,".") }
		password 'foobar'
		password_confirmation "foobar"
	end
end
