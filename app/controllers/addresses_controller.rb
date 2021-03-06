require 'open-uri'
require 'json'

class AddressesController < ApplicationController
  def fetch_coordinates

    if @address.nil
        # asdf
    else
        # as
    end

    @address = "the corner of Foster and Sheridan"

    @url_safe_address = URI.encode(@address)

    # Your code goes here.
    url = "http://maps.googleapis.com/maps/api/geocode/json?#{@url_safe_address}&sensor=false"

    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    # results = parsed_data["results"]

    @latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    @longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]
  end
end
