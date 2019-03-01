class Heroine < ApplicationRecord
	belongs_to :power

	validates :name, :super_name, presence: true
	validates :super_name, uniqueness: true

	def self.search(search)
		power = Power.find_by(name: search)
		power ? self.where(power_id: power) : Heroine.all
	end
end
