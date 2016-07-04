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
    product.price = rand(1.0..400.0).round(2)
    product.attachments << Attachment.new(file: File.new(Rails.root.join('db', 'seeds', 'test-image.jpg')))
    product.save!
  end
end
