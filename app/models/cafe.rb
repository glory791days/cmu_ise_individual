class Cafe < ActiveRecord::Base
  self.table_name = "cafes"
  attr_accessible :name, :place, :category, :price, :time, :description

	validates :name, presence: true
	has_many :reviews
end