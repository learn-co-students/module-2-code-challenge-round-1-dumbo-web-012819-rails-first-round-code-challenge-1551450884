class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, presence: true
  validates :super_name, presence: true
  validates :super_name, uniqueness: true
  validates :power_id, presence: {message: 'must be selected'}

  def self.with_super_power(power)

    Heroine.all.select do |hero|
        hero.power.name.downcase == power.downcase
    end

  end

end
