# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

FuelType.destroy_all
Station.destroy_all
StationsFuelType.destroy_all
Vehicle.destroy_all
VehicleFuelType.destroy_all
User.destroy_all

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

puts "Creating Station 1..."
# api_update: "29-11-2022 00:26" --> ver como será isto colocado
Station.create(
  name: "Galp Matosinhos",
  address: "Rua Brito Capelo, 951",
  city: "Matosinhos",
  zip_code: "4450-077",
  district: "Porto",
  latitude: 41.17947397622519,
  longitude: -8.689222942994473,
  station_type: "Outro",
  brand: "Galp"
  #services: ["Lavagem Auto", "WC", "ATM", "Loja Tangerina", "Visa", "Multibanco"],#.to_json,
  #schedule: ["2ª: 9-20", "3ª: 9-20"],#.to_json,
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
  brand: "Prio"
  #services: ["Lavagem Auto", "WC", "ATM", "Loja Tangerina", "Visa", "Multibanco"],#.to_json,
  #schedule: ["2ª: 9-20", "3ª 9-20"],
)
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
puts "Creating Station 3..."   #--> Vou aqui!!
Station.create(
  name: "Creixomil",
  address: "Rua de São Miguel, São Miguel de Baixo",
  latitude: 41.43914045640935,
  longitude: -8.307753971534092,
  station_type: "Auto-estrada",
  brand: "Shell",
  services: ["Acessibilidade", "Ar-Agua", "Gas 9kg", "Loja Conveniencia", "Lubrificantes", "Wifi-gratuito"],#.to_json,
  schedule: ["2ª: 7-23", "3ª 7-23"],
  fuel_types: ["gasoleo_simples", "gasoleo_especial", "gasolina_especial_95", "gasolina_simples_95"],#.to_json,
  prices: {
    gasoleo_simples: 1.8890,
    gasoleo_especial: 1.8390,
    gasolina_simples_95: 1.8790,
    gasolina_especial_95: 1.8090
  },
  last_comunication_date: "28-11-2022 00:00",
  api_update: "29-11-2022 00:26"
)

Station.create(
  name: "Guimarães",
  address: "Largo de São Brás, Guimarães",
  latitude: 41.44146733953273,
  longitude: -8.289682350412324,
  station_type: "Outro",
  brand: "Prio",
  services: ["Acessibilidade", "WC", "Atendimento", "Ar-Agua", "Loja Conveniencia", "Lubrificantes"],#.to_json,
  schedule: ["2ª: 7-23", "3ª 7-23"],
  fuel_types: ["gasoleo_simples", "gasoleo_especial", "gasolina_especial_95", "gasolina_simples_95"],#.to_json,
  prices: {
    gasoleo_simples: 1.6890,
    gasoleo_especial: 1.6190,
    gasolina_simples_95: 1.6790,
    gasolina_especial_95: 1.6090
  },
  last_comunication_date: "28-11-2022 00:00",
  api_update: "29-11-2022 00:26"
)

Station.create(
  name: "Posto de abastecimento Cepsa MATOSINHOS",
  address: "Rua de Alfredo Cunha 546, 4450-022 Matosinhos",
  latitude: 41.186565030998764,
  longitude: -8.677973147679213,
  station_type: "Auto-Estrada",
  brand: "Cepsa",
  services: ["Loja", "Lavagem Auto", "Ar-Agua"],#.to_json,
  schedule: ["Seg-Dom 00:00 - 24:00"],
  fuel_types: ["gasoleo_simples", "gasoleo_especial", "gasolina_especial_95", "gasolina_simples_95"],#.to_json,
  prices: {
    gasoleo_simples: 1.6890,
    gasoleo_especial: 1.6190,
    gasolina_simples_95: 1.6790,
    gasolina_especial_95: 1.6090
  },
  last_comunication_date: "28-11-2022 00:00",
  api_update: "29-11-2022 00:26"
)

Station.create(
  name: "Q8 Canidelo",
  address: "Rua Santa Eufémia, 174, 4485-060 Canidelo",
  latitude: 41.312712068640856,
  longitude: -8.634300222501045,
  station_type: "passageiros e pesados",
  brand: "Q8",
  services: ["Loja", "Lavagem Auto", "Ar-Agua"],#.to_json,
  schedule: ["Seg-Dom 07:00 - 21:00"],
  fuel_types: ["gasoleo_simples", "gasoleo_especial", "gasóleo colorido", "gasolina_especial_95", "gasolina_simples_95", "gasolina_especial_98", "gasolina_mistura"],#.to_json,
  prices: {
    gasoleo_simples: 1.6290,
    gasoleo_especial: 1.6590,
    gasoleo_colorido: 1.3090,
    gasolina_simples_95: 1.6040,
    gasolina_especial_95: 1.6140,
    gasolina_especial_98: 1.7840,
    gasolina_mistura: 2.2010
  },
  last_comunication_date: "15-09-2022 00:26",
  api_update: "29-11-2022 00:26"
)
puts "Created Stations."

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
  #fuel_type: "gasóleo",
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
