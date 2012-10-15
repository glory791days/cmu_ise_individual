require 'factory_girl'

FactoryGirl.define do
	factory :user do
		name "Example User"
		#sequence(:name) { |n| 'Test #{n}' }
		email "example@railstutorial.org"
		#email { "#{name}@test.cmu.edu".downcase.gsub(/\s/,".") }
		password 'foobar'
		password_confirmation "foobar"
	end
end
