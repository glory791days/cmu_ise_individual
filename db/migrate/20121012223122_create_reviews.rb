class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
			t.integer :star
      t.string :content
			t.integer :price
			t.integer :time
			t.string :order
			t.integer :user_id
      t.integer :cafe_id

      t.timestamps
		end
		add_index :reviews, [:user_id, :created_at]
		add_index :reviews, [:cafe_id, :created_at]
  end
end
