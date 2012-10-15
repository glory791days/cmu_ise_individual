namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example-0@test.cmu.edu",
                 password: "foobar",
                 password_confirmation: "foobar")
    49.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@test.cmu.edu"
      password  = "foobar"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
		end

		users = User.all(limit:5)
		50.times do |n|
			content = Faker::Lorem.sentence(5)
      users.each do |user|
				user.reviews.create!(content: content, cafe_id: ( n.modulo(3) + 1 ), price: ( n.modulo(10) + 1), time: (n.modulo(30) + 1), star: (n.modulo(5) + 1) )
			end
		end
	end
end
