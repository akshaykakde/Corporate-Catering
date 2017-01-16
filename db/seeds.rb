# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  v1 = Vendor.find_or_create_by(name: 'Ganesh snacks', location: 'pune', phone: 709)
  v2 = Vendor.find_or_create_by(name: 'KFC snack', location: 'sangli', phone: 700)
  v3 = Vendor.find_or_create_by(name: 'Dominoz snack', location: 'pune', phone: 491)
  v4 = Vendor.find_or_create_by(name: 'baner snack center',location: 'sangli', phone: 492)
  v5 = Vendor.find_or_create_by(name: 'sameer snacks', location: 'miraj', phone: 693)
  Menuitems = [{name: 'panner masala', price: 120, veg:true},{name: 'panner kadai', price: 150, veg:true},{name: 'pav bhaji', price: 40, veg:true},{name: 'kachori', price: 20, veg:true},{name: 'panipuri', price: 50, veg:true},{name: 'noodles', price: 50, veg:true, vendor_id:14}]
  v = [v1,v2,v3,v4,v5]
  for vobj in v
    for menu in Menuitems
      vobj.menu_items.find_or_create_by(menu)
    end
  end
  company_obj = []
  
  company_info = [{name:"symantec",phone:789,location:"pune",email:"veritas@gmail.com"},
{name:"eaton",phone:456,location:"kharadi",email:"eaton@gmail.com"},{name:"thoughtworks",phone:256,location:"kharadi",email:"tw@gmail.com"},{name:"gslab",phone:756,location:"baner",email:"gslab@gmail.com"},{name:"eaton",phone:456,location:"kharadi",email:"eaton@gmail.com"},{name:"eaton",phone:4016,location:"hinjewadi",email:"ibm@gmail.com"}]
  
  for company in company_info
    company_obj << Company.find_or_create_by(company)
  end 
 
  employee_info = [{name:"amar_k",phone:545,designation:"HR",email:"amar_k@gmail.com"},{name:"abhi_k",phone:145,designation:"HR",email:"abhi_k@gmail.com"},{name:"avi_k",phone:45,designation:"HR",email:"avi_k@gmail.com"},{name:"sameer_k",phone:40,designation:"HR",email:"sameer_k@gmail.com"},{name:"pavan_k",phone:465,designation:"HR",email:"pavan_k@gmail.com"}] 

  i=0
  for company in company_obj
    company.employee.find_or_create_by(employee_info[i])
    i=i+1
  end  
