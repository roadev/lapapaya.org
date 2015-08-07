class PagesController < ApplicationController
  def userpanel
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
    marker.lat user.latitude
    marker.lng user.longitude
    #marker.infowindow
end
  end
  def patrocinios
  end
end
