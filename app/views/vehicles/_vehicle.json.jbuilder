# json.extract! vehicle, :id, :created_at, :updated_at
# json.url vehicle_url(vehicle, format: :json)
# json.id vehicle.id
# json.year vehicle.year
# json.make vehicle.make
# json.model vehicle.model
# json.image_url vehicle.image_url
json.extract! vehicle, :id, :year, :make, :model, :image_url, :created_at, :updated_at