class Company < ApplicationRecord
  has_many :employee
  has_and_belongs_to_many :daily_menus
  validates :name, :location, :email, presence: {case_sensitive: false}
  validates :phone, numericality: {only_integer: true}, uniqueness: true
  before_destroy :at_least_one_hr
  before_create :first_employee_as_hr
  def at_least_one_hr
    count = Employee.where(company_id: self.id,designation:"hr").count
    if count == 1 then
      puts "company must have an hr,You cant remove."
      throw :abort
    end
  end
  def first_employee_as_hr
    count = Employee.where(company_id: self.id,designation:"hr").count
    if count <= 0
      if self.employee.designation = hr 
        self.employee.create(name:self.employee.name,phone:self.employee.phone,designation:self.employee.designation,email:self.employee.email)
      else
        puts "first employee should be hr"
        throw :abort
      end
    else
      self.employee.create(name:self.employee.name,phone:self.employee.phone,designation:self.employee.designation,email:self.employee.email)  
    end
  end
end
