class Cafe < ActiveRecord::Base
  self.table_name = "cafes"
  attr_accessible :name, :bldg, :category, :price, :time, :description

	validates :name, presence: true
end