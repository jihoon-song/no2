# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email: 'test@likelion.com', password: "12345678")



# Seed the database with background images from the public/img/ 
(1...9).to_a.each do |i|
	image = Image.new
	address = ('public/img/' + i.to_s + '.jpg')
	File.open(address) do |f|
	  image.url = f
	end
	image.save!
end