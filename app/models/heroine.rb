class Heroine < ApplicationRecord
  # Power -< Heroine
  belongs_to :power
  validates(:super_name, presence: true, uniqueness: true)

  def self.filter_heroines(query)
    Heroine.all.select do |heroine|
      heroine.power.name == query
    end
  end

end
