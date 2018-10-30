class BoardsController < ApplicationController
  def point
    @hash = Gmaps4rails.build_markers(@map) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.address
    end
  end
end
