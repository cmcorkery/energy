# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Usage.create(month: "February 21 2011", gas: 200, elec:500, biomass:100)
Usage.create(month: "31/5/2011", gas:220, elec:510, biomass: 150)
Usage.create(month: "1/8/2011", gas:300, elec:600, biomass:200)
Usage.create(month: "30/9/2011", gas:400, elec:550, biomass:210)
Usage.create(month: "30/10/2011", gas:210, elec:590, biomass:240)
Usage.create(month: "30/11/2011", gas:300, elec:600, biomass:200)
Usage.create(month: "30/12/2011", gas:300, elec:600, biomass:200)
Usage.create(month: "30/1/2012", gas:500, elec:600, biomass:240)
Usage.create(month: "28/2/2012", gas:300, elec:600, biomass:240)
Usage.create(month: "30/3/2012", gas:300, elec:800, biomass:250)
Usage.create(month: "30/4/2012", gas:300, elec:600, biomass:220)
Usage.create(month: "30/5/2012", gas:300, elec:600, biomass:200)
Usage.all.each do |u|
	u.create_price(gas:0.05, elec:0.1, biomass:0.04)
end
Project.create(title:"Install VSD", system:"HVAC", date_submitted: "1/3/2011", status: "Implemented", date_implemented:"31/12/2011", capital_investment: 500, annual_elec_savings:2400)