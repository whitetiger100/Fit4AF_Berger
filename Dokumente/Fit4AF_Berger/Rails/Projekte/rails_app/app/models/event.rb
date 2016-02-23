class Event < ActiveRecord::Base

	validates :name, presence: true
	validates :description, length: {minimum: 25}
	validates :price, numericality: true

	def free?
		self.price.present? && self.price > 0
	end 

	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")
	end
end
