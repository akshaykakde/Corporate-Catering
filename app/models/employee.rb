class Employee < ApplicationRecord
  belongs_to :company

  validates :name, :phone, :designation, :email, presence: { case_sensitive: false } 
  validates :phone, numericality: { only_integer: true }
  validates :phone, uniqueness: true
  has_many :orders
  #before_destroy :check_for_last_hr
=begin
  def check_for_last_hr
    if self.where(company_id:self.company_id,designation:"HR").conunt > 1?
      self.destroy!
    else
      self.rollback
  end
=end
end
