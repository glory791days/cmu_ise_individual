class Review < ActiveRecord::Base
  attr_accessible :star, :cafe_id, :content, :price, :time, :order
	belongs_to :user

	validates :user_id, presence: true
	validates :content, presence: true
	default_scope order: 'reviews.created_at DESC'
end
