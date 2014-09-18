# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 # title: nil, useful_for: nil, analysis_group: nil,
 #  gadget_description: nil, cost: nil, company_name: nil, company_website: nil

  for i in 1..20
    Gadget.create(:title =>"title#{i}",:useful_for=>"useful_for#{i}",:analysis_group=>"analysis_group#{i}",
    :company_website=>"this is company_website#{i}",:gadget_description=>"this is gadget descrption#{i}",:cost=>1000+i,
    :company_name =>"Navaratan#{i}",:name =>"GadgetName#{i}",:email=>"employee#{i}@navaratan.com",
    :technology_used =>"Ruby on Rails",:scientific_description =>"this is descrption scientific")
  end
