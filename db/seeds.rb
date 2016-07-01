# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
30.times do |i|
  Product.find_or_initialize_by(title: "Product#{i}") do |product|
    product.description = 'Lorem ipsum'
    product.price = [0.3, 0.2, 0.5].sample * i
    product.save!
  end
end
