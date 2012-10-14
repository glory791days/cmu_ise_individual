require 'factory_girl'

FactoryGirl.define do
	factory :user do
		id 1
		name 'Test User'
		email '#{name.downcase.gsub(/ /,".")}@test.cmu.edu'
		password 'foobar'
		password_confirmation "foobar"
	end
end
