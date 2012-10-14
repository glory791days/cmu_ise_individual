class Review < ActiveRecord::Base
  attr_accessible :star, :cafe_id, :content, :price, :time, :order
	belongs_to :user

	validates_presence_of :user_id, presence: true
end
