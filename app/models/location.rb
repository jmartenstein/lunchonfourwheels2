require 'net/http'
require 'json'

class Location < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :one_time_stops
  validates_presence_of :address

  after_initialize :default_values

  def default_values

    #http_string = get_lookup_string()

    #uri = URI.parse(http_string)
    #response = 
    #Net::HTTP.get_response("example.com","/?search=thing&format=json")

    latlong_array = [0, 0]
    if (!self.address.nil?)
      latlong_array = lookup_lat_long()
    end

    self.latitude = latlong_array[0]
    self.longitude = latlong_array[1]

  end

  def lookup_lat_long( )

    # swap out a "+" for a space, so we get a valid URL
    if (!self.address.nil?)
      subbed_address = self.address.gsub(' ', '+')
    else
      subbed_address = ""
    end

    #build the URL and make the HTTP request
    response = Net::HTTP.get_response("maps.googleapis.com","/maps/api/geocode/json?address="+subbed_address+"&sensor=false")

    # parse the JSON response
    parsed = JSON.parse(response.body)

    lat = parsed['results'][0]['geometry']['location']['lat']
    long = parsed['results'][0]['geometry']['location']['lng']

    latlong = [lat, long]

    return latlong

  end

end
