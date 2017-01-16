class Vendor < ApplicationRecord
  has_many :menu_items, dependent: :destroy
  validates :name,presence: true
  validates :location,presence: true
  validates :name,length: { minimum:5, maximmum:10}
  before_validation :remove_spaces
  def remove_spaces 
    self.name = self.name.squish
  end
end
