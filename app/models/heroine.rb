class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, :super_name, presence: true
  validates :name, :super_name, uniqueness: true
  # validates :self, uniqueness: {scope: :power, message: "You can only have one power!!!"}
end
