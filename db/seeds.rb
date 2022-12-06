# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

StationsFuelType.destroy_all
VehicleFuelType.destroy_all
FuelType.destroy_all
Vehicle.destroy_all
Discount.destroy_all
User.destroy_all
UserDiscount.destroy_all
Station.destroy_all

################################################################################
puts "Creating FuelTypes..."
FuelType.create(
  name: "Gasóleo Simples"
)
FuelType.create(
  name: "Gasóleo Colorido"
)
FuelType.create(
  name: "Gasóleo Especial"
)
FuelType.create(
  name: "Biodiesel B15"
)
FuelType.create(
  name: "Gasolina Simples 98"
)
FuelType.create(
  name: "Gasolina Especial 98"
)
FuelType.create(
  name: "Gasolina Simples 95"
)
FuelType.create(
  name: "Gasolina Especial 95"
)
FuelType.create(
  name: "GPL Auto"
)
puts "Created FuelTypes..."
################################################################################
# api_update: "29-11-2022 00:26" --> ver como será isto colocado

puts "Creating Station 1..."
Station.create(
  name: "Galp Matosinhos",
  address: "Rua Brito Capelo, 951",
  city: "Matosinhos",
  zip_code: "4450-077",
  district: "Porto",
  latitude: 41.17947397622519,
  longitude: -8.689222942994473,
  station_type: "Outro",
  brand: "Galp",
  #services: ["Lavagem Auto", "WC", "ATM", "Loja Tangerina", "Visa", "Multibanco"],#.to_json,
  services: "Car-Wash, WC, ATM, Air-Water, Convenience Store, Lubricants",#.to_json,
  schedule: "Mon-Sun: 09-20h"
)

puts "Creating Fuel Types and Prices for Station 1..."
StationsFuelType.create(
  station: Station.find_by(name: "Galp Matosinhos"),
  fuel_type: FuelType.find_by(name: "Gasóleo Simples"),
  price_per_l: 1.7890,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Galp Matosinhos"),
  fuel_type: FuelType.find_by(name: "Gasóleo Especial"),
  price_per_l: 1.8390,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Galp Matosinhos"),
  fuel_type: FuelType.find_by(name: "Gasolina Simples 95"),
  price_per_l: 1.7690,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Galp Matosinhos"),
  fuel_type: FuelType.find_by(name: "Gasolina Especial 98"),
  price_per_l: 1.8190,
  update_date: "28-11-2022 00:00"
)
puts "Finished Creating Fuel Types and Prices for Station 1."
puts "Creating Station 2..."
Station.create(
  name: "Matosinhos-Norauto",
  address: "Avenida Arquiteto Fernando Távora, 718",
  city: "Matosinhos",
  zip_code: "4450-077",
  district: "Porto",
  latitude: 41.21025660368514,
  longitude: -8.68271578161743,
  station_type: "Área comercial (Hipermercados)",
  brand: "Prio",
  services: "Air-Water, Lubricants",#.to_json,
  schedule: "Mon-Sun: 24h"
)
puts "Station 2 created"
puts "Creating Fuel Types and Prices for Station 2..."
StationsFuelType.create(
  station: Station.find_by(name: "Matosinhos-Norauto"),
  fuel_type: FuelType.find_by(name: "Gasóleo Simples"),
  price_per_l: 1.6890,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Matosinhos-Norauto"),
  fuel_type: FuelType.find_by(name: "Gasóleo Especial"),
  price_per_l: 1.6390,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Matosinhos-Norauto"),
  fuel_type: FuelType.find_by(name: "Biodiesel B15"),
  price_per_l: 1.6590,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Matosinhos-Norauto"),
  fuel_type: FuelType.find_by(name: "Gasolina Simples 95"),
  price_per_l: 1.6790,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Matosinhos-Norauto"),
  fuel_type: FuelType.find_by(name: "Gasolina Especial 95"),
  price_per_l: 1.6090,
  update_date: "28-11-2022 00:00"
)
puts "Finished Creating Fuel Types and Prices for Station 2."

puts "Creating Station 3..."
Station.create(
  name: "Creixomil",
  address: "Rua de São Miguel, São Miguel de Baixo",
  city: "Guimarães",
  zip_code: "4810",
  district: "Braga",
  latitude: 41.43914045640935,
  longitude: -8.307753971534092,
  station_type: "Auto-estrada",
  brand: "Shell",
  services: "WC, Air-Water, Gas 9kg, Convenience Store, Lubricants, Wi-fi",#.to_json,
  schedule: "Mon-Sun: 07-23h"
)
puts "Station 3 created"
puts "Creating Fuel Types and Prices for Station 3..."
StationsFuelType.create(
  station: Station.find_by(name: "Creixomil"),
  fuel_type: FuelType.find_by(name: "Gasóleo Simples"),
  price_per_l: 1.8890,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Creixomil"),
  fuel_type: FuelType.find_by(name: "Gasóleo Especial"),
  price_per_l: 1.8390,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Creixomil"),
  fuel_type: FuelType.find_by(name: "Gasolina Simples 95"),
  price_per_l: 1.8790,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Creixomil"),
  fuel_type: FuelType.find_by(name: "Gasolina Especial 95"),
  price_per_l: 1.8090,
  update_date: "28-11-2022 00:00"
)
puts "Finished Creating Fuel Types and Prices for Station 3."

puts "Creating Station 4..."
Station.create(
  name: "Guimarães",
  address: "Largo de São Brás, Guimarães",
  city: "Guimarães",
  zip_code: "4810",
  district: "Braga",
  latitude: 41.44146733953273,
  longitude: -8.289682350412324,
  station_type: "Outro",
  brand: "Prio",
  services: "WC, Air-Water, Convenience Store, Lubricants",#.to_json,
  schedule: "Mon-Sun: 07-23h"
)
puts "Station 4 created"
puts "Creating Fuel Types and Prices for Station 4..."
StationsFuelType.create(
  station: Station.find_by(name: "Guimarães"),
  fuel_type: FuelType.find_by(name: "Gasóleo Simples"),
  price_per_l: 1.8890,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Guimarães"),
  fuel_type: FuelType.find_by(name: "Gasóleo Especial"),
  price_per_l: 1.6890,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Guimarães"),
  fuel_type: FuelType.find_by(name: "Gasolina Simples 95"),
  price_per_l: 1.6790,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Guimarães"),
  fuel_type: FuelType.find_by(name: "Gasolina Especial 95"),
  price_per_l: 1.6090,
  update_date: "28-11-2022 00:00"
)
puts "Finished Creating Fuel Types and Prices for Station 4."
puts "Creating Station 5..."
Station.create(
  name: "Posto de abastecimento Cepsa MATOSINHOS",
  address: "Rua de Alfredo Cunha 546, 4450-022 Matosinhos",
  city: "Matosinhos",
  zip_code: "4450-022",
  district: "Porto",
  latitude: 41.186565030998764,
  longitude: -8.677973147679213,
  station_type: "Auto-Estrada",
  brand: "Cepsa",
  services: "Store, Car-Wash, Air-Water, Lubricants",#.to_json,
  schedule: "Mon-Sun: 24h"
)
puts "Station 5 created"
puts "Creating Fuel Types and Prices for Station 5..."
StationsFuelType.create(
  station: Station.find_by(name: "Posto de abastecimento Cepsa MATOSINHOS"),
  fuel_type: FuelType.find_by(name: "Gasóleo Simples"),
  price_per_l: 1.6890,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Posto de abastecimento Cepsa MATOSINHOS"),
  fuel_type: FuelType.find_by(name: "Gasóleo Especial"),
  price_per_l: 1.6190,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Posto de abastecimento Cepsa MATOSINHOS"),
  fuel_type: FuelType.find_by(name: "Gasolina Simples 95"),
  price_per_l: 1.6790,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Posto de abastecimento Cepsa MATOSINHOS"),
  fuel_type: FuelType.find_by(name: "Gasolina Especial 95"),
  price_per_l: 1.6090,
  update_date: "28-11-2022 00:00"
)
puts "Finished Creating Fuel Types and Prices for Station 5."

puts "Creating Station 6..."
Station.create(
  name: "Q8 Canidelo",
  address: "Rua Santa Eufémia, 174",
  city: "Canidelo",
  zip_code: "4485-060",
  district: "Vila Nova de Gaia",
  latitude: 41.186565030998764,
  longitude: -8.677973147679213,
  station_type: "Outro",
  brand: "Q8",
  services: "Air-Water, Convenience Store Lubricants",#.to_json,
  schedule: "Mon-Sun: 07-21h"
)
puts "Station 6 created"
puts "Creating Fuel Types and Prices for Station 5..."
StationsFuelType.create(
  station: Station.find_by(name: "Q8 Canidelo"),
  fuel_type: FuelType.find_by(name: "Gasóleo Simples"),
  price_per_l: 1.6290,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Q8 Canidelo"),
  fuel_type: FuelType.find_by(name: "Gasóleo Especial"),
  price_per_l: 1.6590,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Q8 Canidelo"),
  fuel_type: FuelType.find_by(name: "Gasóleo Colorido"),
  price_per_l: 1.3090,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Q8 Canidelo"),
  fuel_type: FuelType.find_by(name: "Gasolina Simples 95"),
  price_per_l: 1.6040,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Q8 Canidelo"),
  fuel_type: FuelType.find_by(name: "Gasolina Especial 95"),
  price_per_l: 1.6140,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Q8 Canidelo"),
  fuel_type: FuelType.find_by(name: "Gasolina Especial 98"),
  price_per_l: 1.7840,
  update_date: "28-11-2022 00:00"
)
StationsFuelType.create(
  station: Station.find_by(name: "Q8 Canidelo"),
  fuel_type: FuelType.find_by(name: "Gasolina Mistura"),
  price_per_l: 2.2010,
  update_date: "28-11-2022 00:00"
)
puts "Finished Creating Fuel Types and Prices for Station 6."
puts "Created Stations."
################################################################################
puts "Creating Discounts"
# "brand", "quantity", "min_fuel_l", "max_fuel_l", "card", "description"
# "min_user_age", "max_user_age", "locations_applied", "discount_type"
Discount.create(
  card: "Continente", brand: "Galp",
  quantity: 0.03, min_fuel_l: 0, max_fuel_l: 60,
  description: "3 cênt/l em qualquer abastecimento de combustível Galp Evologic que apresente o seu Cartão Continente (max 60L)",
  locations_applied: "Continente, Madeira e Açores", discount_type: "Direto em Evologic"
)
Discount.create(
  card: "Plano Galp e Continente", brand: "Galp",
  quantity: 0.14, min_fuel_l: 0, max_fuel_l: 999,
  description: "14 cênt/l em combustível Galp em Cartão Continente",
  locations_applied: "Continente, Madeira e Açores", discount_type: "Em cartão Continente"
)
puts "Finished creating discounts"

################################################################################
puts "Creating Users..."
User.create(
  first_name: "Jorge", last_name: "Guimarães",
  email: "jorge@hotmail.com", password: "123456"
)

User.create(
  first_name: "Francisco", last_name: "Patricio",
  email: "francisco@hotmail.com", password: "123456"
)

User.create(
  first_name: "Manuel", last_name: "Esteves",
  email: "manuel@hotmail.com", password: "123456"
)
puts "Created Users."
################################################################################
puts "Associating Discounts to users"
UserDiscount.create(
  user: User.find_by(first_name: 'Jorge'),
  discount: Discount.find_by(card: "Plano Galp e Continente")
)
UserDiscount.create(
  user: User.find_by(first_name: 'Manuel'),
  discount: Discount.find_by(card: "Plano Galp e Continente")
)
UserDiscount.create(
  user: User.find_by(first_name: 'Francisco'),
  discount: Discount.find_by(card: "Plano Galp e Continente")
)
puts "Associated Discounts to users"
################################################################################

puts "Creating Vehicles..."
Vehicle.create(
  brand: "Kia", model: "Rio",
  real_consumption: 4.5,
  #fuel_type: "gasóleo",
  user: User.find_by(first_name: 'Jorge')
)
Vehicle.create(
  brand: "Honda", model: "PCX",
  real_consumption: 2.8,
  #fuel_type: "gasolina",
  user: User.find_by(first_name: 'Jorge')
)
Vehicle.create(
  brand: "Bmw", model: "320",
  real_consumption: 6,
  #fuel_type: "gasóleo",
  user: User.find_by(first_name: 'Francisco')
)
Vehicle.create(
  brand: "Bmw", model: "750",
  real_consumption: 9,
  #fuel_type: "gasolina",
  user: User.find_by(first_name: 'Francisco')
)
Vehicle.create(
  brand: "Mercedes", model: "250",
  real_consumption: 7,
  #fuel_type: "gasolina",
  user: User.find_by(first_name: 'Manuel')
)
Vehicle.create(
  brand: "Toyota", model: "Prius",
  real_consumption: 5,
  #fuel_type: "gasolina",
  user: User.find_by(first_name: 'Manuel')
)
puts "Created Vehicles."
################################################################################
puts "Associating Fuel Types for vehicle 1..."
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "Rio").find_by(user: User.find_by(first_name: "Jorge")),
  fuel_type: FuelType.find_by(name: "Gasóleo Simples")
)
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "Rio").find_by(user: User.find_by(first_name: "Jorge")),
  fuel_type: FuelType.find_by(name: "Gasóleo Especial")
)
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "Rio").find_by(user: User.find_by(first_name: "Jorge")),
  fuel_type: FuelType.find_by(name: "Biodiesel B15")
)
puts "Associating Fuel Types for vehicle 2..."
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "PCX").find_by(user: User.find_by(first_name: "Jorge")),
  fuel_type: FuelType.find_by(name: "Gasolina Simples")
)
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "PCX").find_by(user: User.find_by(first_name: "Jorge")),
  fuel_type: FuelType.find_by(name: "Gasolina Top")
)
puts "Associating Fuel Types for vehicle 3..."
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "750").find_by(user: User.find_by(first_name: "Francisco")),
  fuel_type: FuelType.find_by(name: "Gasolina Top")
)
puts "Associating Fuel Types for vehicle 4..."
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "320").find_by(user: User.find_by(first_name: "Francisco")),
  fuel_type: FuelType.find_by(name: "Gasóleo Simples")
)
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "320").find_by(user: User.find_by(first_name: "Francisco")),
  fuel_type: FuelType.find_by(name: "Gasóleo Especial")
)
puts "Associating Fuel Types for vehicle 5..."
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "250").find_by(user: User.find_by(first_name: "Manuel")),
  fuel_type: FuelType.find_by(name: "Gasolina Simples")
)
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "250").find_by(user: User.find_by(first_name: "Manuel")),
  fuel_type: FuelType.find_by(name: "Gasolina Top")
)
puts "Associating Fuel Types for vehicle 6..."
VehicleFuelType.create(
  vehicle: Vehicle.where(model: "Prius").find_by(user: User.find_by(first_name: "Manuel")),
  fuel_type: FuelType.find_by(name: "Gasolina Top")
)
puts "Finished associating Fuel Types to vehicles"
################################################################################
