# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

marination_truck = Truck.create( 
  name: "Marination Mobile",
  website: "http://www.marinationmobile.com",
  twitter: "curb_cuisine",
  yelp: "http://www.yelp.com/biz/marination-mobile-seattle" 
)

whereyaat_truck = Truck.create( 
  name: "Where Ya At Matt",
  website: "http://www.whereyaatmatt.com",
  twitter: "whereyaatmatt",
  yelp: "http://www.yelp.com/biz/where-ya-at-matt-seattle" 
)

skillet_truck = Truck.create( 
  name: "Skillet",
  website: "http://www.skilletstreetfood.com",
  twitter: "skilletstfood",
  yelp: "http://www.yelp.com/biz/skillet-seattle"
)

barriga_truck = Truck.create( 
  name: "Barriga Llena",
  website: "http://www.labarrigallena.com",
  twitter: "barrigallena",
  yelp: "http://www.yelp.com/biz/barriga-llena-seattle"
)

pais_truck = Truck.create( 
  name: "Pai's",
  website: "http://www.paifoods.com",
  twitter: "paifoods",
  yelp: "http://www.yelp.com/biz/pais-seattle"
)

sodo_hood = Neighborhood.create(
  name: "SoDo"
)

slu_hood = Neighborhood.create(
  name: "South Lake Union"
)

harrison1126_loc = Location.create(
  address: "1126 Harrison St.",
  description: "between Boren and Fairview",
  city_state: "Seattle, WA",
  neighborhood_id: slu_hood.id
)

utah2401_loc = Location.create(
  address: "2401 Utah Ave. S",
  description: "Starbucks HQ",
  city_state: "Seattle, WA",
  neighborhood_id: sodo_hood.id
)
