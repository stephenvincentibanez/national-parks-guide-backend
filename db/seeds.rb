# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

Park.destroy_all
# Review.destroy_all


response = RestClient.get "https://developer.nps.gov/api/v1/parks?limit=496&q=national%20park&api_key=ZOStE88Yuf4ZqvJ39vxpOBLa4tcviH7vKUcaZBQE"
json = JSON.parse(response)["data"]
 

json.map do |park|
    Park.create(name: park["fullName"],
     description: park["description"], 
     states: park["states"], 
     images: park["images"], 
     activities: park["activities"],
    entrance_fees: park["entranceFees"], 
    entrance_passes: park["entrancePasses"],
    weather_info: park["weatherInfo"],
    designation: park["designation"],
    latlong: park["latLong"])
end
 
