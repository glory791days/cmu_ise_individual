Introduction to Software Engineering: Individual Web site
Yuki Nishida: ynishida@andrew.cmu.edu

This web site is reviews of cafes and restaurants in CMU.

For specification requiremnts:
- I made three models and three controlers: Cafe, User, and Review.
- I used migrations twice for cafe table: /db/migrate/20120918180714_create_cafes.rb and /db/migrate/20121014142742_changecafe_columnname.rb
- I wrote several tests. Especially, I used them when I made review model: /spec/models/review_spec.rb and /spec/models/user_spec.rb
- I implemented AJAX operation in "cafes#update" function in /app/controllers/cafes_controller.rb
- I implemented REST API in "cafes#index" and "cafes#show" fucntion.

Another trial:
- I used Devise gem to control user sign up, sign in, and sign out.


