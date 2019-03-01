class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, uniqueness: true
  validates :super_name, presence: true
  validates :name, presence: true
  validates :power_id, length: {is:1}
end
