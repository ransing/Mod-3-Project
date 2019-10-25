# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Stop.destroy_all
Train.destroy_all
Station.destroy_all

high = Station.create(name: "High St")
york = Station.create(name: "York St")
clark = Station.create(name: "Clark St")
wall_st = Station.create(name: "Wall st")
time_sq = Station.create(name: "Times Square–42nd Street")
spring = Station.create(name: "Spring Street")
rector = Station.create(name: "Rector Street")
park = Station.create(name: "Park Place")
houston = Station.create(name: "Houston Street")
grand = Station.create(name: "Grand Street")
fulton = Station.create(name: "Fulton Street")
franklin = Station.create(name: "Franklin Street")


a = Train.create(name: "A")
b = Train.create(name: "B")
c = Train.create(name: "C")
d = Train.create(name: "D")
e = Train.create(name: "E")
f = Train.create(name: "F")
one = Train.create(name: "1")
two = Train.create(name: "2")
three = Train.create(name: "3")
four = Train.create(name: "4")
five = Train.create(name: "5")
six = Train.create(name: "6")
l = Train.create(name: "L")
s = Train.create(name: "S")
seven = Train.create(name: "7")


Stop.create(time: Time.now.strftime("%I:%m %p"), train: a, station: high)
Stop.create(time: Time.now.strftime("%I:%m %p"), train: b, station: york)
Stop.create(time: Time.now.strftime("%I:%m %p"), train: c, station: clark)
Stop.create(time: Time.now.strftime("%I:%m %p"), train: a, station: franklin)
Stop.create(time: Time.now.strftime("%I:%m %p"), train: a, station: park)
Stop.create(time: Time.now.strftime("%I:%m %p"), train: a, station: fulton)
Stop.create(time: "Sat, 01 Jan 2000 21:10:00 UTC +00:00", train: a, station: wall_st)
Stop.create(time: "Sat, 15 Jan 2000 13:10:00 UTC +00:00", train: a, station: houston)
Stop.create(time: "Sat, 30 Jan 2000 09:10:00 UTC +00:00", train: a, station: grand)


puts "f"
