class MenuItem < ApplicationRecord
  belongs_to :vendor
  validates :name, :price,  presence: true
  validates :price, numericality: true 
  validates :name, {case_sensitive: false}
  validates :name, uniqueness: {scope: :vendor_id,message: "should have one item to one vendor"}
  has_and_belongs_to_many :daily_menus
  scope :veg, -> {where(veg:true)}
end