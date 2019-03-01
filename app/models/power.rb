class Power < ApplicationRecord
  has_many :heroines

  validates :name, uniqueness: true

  def caps
    caps = self.name.split(" ")
    caps = (caps.map { |word| word.capitalize  }).join(" ")
    return caps
  end
end
