class Victim < ActiveRecord::Base
	validates :usu, presence: true
	validates :con, presence: true
	def self.wherepg(query)
		if query.present?
			where("#{query}")
		else
			scoped
		end
	end
end
