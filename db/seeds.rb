# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Vehicle.create!([
  { year: 2013, make: "Ford", model: "Explorer" },
  { year: 2009, make: "Saturn", model: "Vue XE" },
])

Fuel.create!([
  { fill_date: "20-Jun-2023", mileage: 81000, cost_per_gallon: 3.85, location: "RLB Meijer", gallons: 14.78, vehicle_id: 2 },
  { fill_date: "23-Jun-2023", mileage: 156105, cost_per_gallon: 3.75, location: "NEX North Chicago", gallons: 10.45, vehicle_id: 1 },
  { fill_date: "04-Jul-2023", mileage: 81206, cost_per_gallon: 4.06, location: "RLB Meijer", gallons: 13.74, vehicle_id: 2 },
  { fill_date: "10-Jul-2023", mileage: 81507, cost_per_gallon: 3.98, location: "RLB Meijer", gallons: 12.78, vehicle_id: 2 },
  { fill_date: "19-Jul-2023", mileage: 156490, cost_per_gallon: 3.78, location: "Shell Rt 83", gallons: 10.56, vehicle_id: 1 },
  { fill_date: "29-Jul-2023", mileage: 156980, cost_per_gallon: 4.09, location: "Shell Rt 83", gallons: 12.06, vehicle_id: 1 },
])

User.create!([
  { email: "dan@example.com", name: "Dan Example", password_digest: "$2a$12$ggKAL0Ja.MbnZWP4OgQc4eBxBE6tE2CXxLw1Y7MgQoz0AYa/Bh.tW" },
  { email: "mike@example.com", name: "Mike Example", password_digest: "$2a$12$/urmKU1wb1TydNESDbXjbOkezpI734OXJ7FeYL7uHvephj89EbVUW" },
])

# Maintenance.create!([
#   {service_date: "02-Jan-2023", mileage: 78535, work_performed: "Oil/filter change, tire rotation", performed_by: "City Chevy", cost: 58.90, notes: "no other issues", vehicle_id: 2},
#   {service_date: "25-Feb-2023", mileage: 155100, work_performed: "Oil/filter change, tire rotation", performed_by: "Firesotne", cost: 48.95, notes: "Coolant low, added 1 quart", vehicle_id: 1},   {service_date: "14-Apr-2023", mileage: 80503, work_performed: "New tires", performed_by: "Discount Tire", cost: 896.00, notes: "Continental tires", vehicle_id: 2},
#   {service_date: "01-Jun-2023", mileage: 155600, work_performed: "Replaced exhaust", performed_by: "Libeertyville Ford", cost: 1345.90, notes: "Resolved rattling noise", vehicle_id: 1},
#   {service_date: "01-Jun-2023", mileage: 155600, work_performed: "New tires", performed_by: "Discount Tire", cost: 1296.00, notes: "Michelein tires", vehicle_id: 1},
#   {service_date: "14-Jul-2023", mileage: 81590, work_performed: "Tire repair", performed_by: "Discount Tire", cost: 0.00, notes: "Nail in tire", vehicle_id: 2},
# ])
