# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Park.destroy_all
Review.destroy_all

# parks = [

# ]
def parks 
    response = RestClient.get "https://developer.nps.gov/api/v1/parks?limit=3&sort=&api_key=ZOStE88Yuf4ZqvJ39vxpOBLa4tcviH7vKUcaZBQE"
    json = JSON.parse response

    if !json.nil?
        json["data"].map do |park|
            Park.create(name: "#{park["fullName"]}")
        end
    else
        puts "error seeding parks"
    end
end



# states = [
#     {name: "Alabama"},
#     {name: "Alaska"},
#     {name: "Arizona"},
#     {name: "Arkansas"},
#     {name: "California"},
#     {name: "Colorado"},
#     {name: "Connecticut"},
#     {name: "Delaware"},
#     {name: "Florida"},
#     {name: "Georgia"},
#     {name: "Hawaii"},
#     {name: "Idaho"},
#     {name: "Illinois"},
#     {name: "Indiana"},
#     {name: "Iowa"},
#     {name: "Kansas"},
#     {name: "Kentucky"},
#     {name: "Louisiana"},
#     {name: "Maine"},
#     {name: "Maryland"},
#     {name: "Massachusetts"},
#     {name: "Michigan"},
#     {name: "Minnesota"},
#     {name: "Mississippi"},
#     {name: "Missouri"},
#     {name: "Montana"},
#     {name: "Nebraska"},
#     {name: "Nevada"},
#     {name: "New Hampshire"},
#     {name: "New Jersey"},
#     {name: "New Mexico"},
#     {name: "New York"},
#     {name: "North Carolina"},
#     {name: "North Dakota"},
#     {name: "Ohio"},
#     {name: "Oklahoma"},
#     {name: "Oregon"},
#     {name: "Pennsylvania"},
#     {name: "Rhode Island"},
#     {name: "South Carolina"},
#     {name: "South Dakota"},
#     {name: "Tennessee"},
#     {name: "Texas"},
#     {name: "Utah"},
#     {name: "Vermont"},
#     {name: "Virginia"},
#     {name: "Washington"},
#     {name: "West Virginia"},
#     {name: "Wisconsin"},
#     {name: "Wyoming"},
# ]

# states.each do |state|
#     State.create(state)
# end

