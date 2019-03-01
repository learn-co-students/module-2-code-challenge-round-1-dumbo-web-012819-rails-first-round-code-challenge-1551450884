class Heroine < ApplicationRecord
  belongs_to :power

  # Makes sure no super hero has the same super name
  validates :super_name, uniqueness: true

end
