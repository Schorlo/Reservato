class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @restaurants = Restaurant.all
  end

    def index
    @restaurants = Restaurant.all

    if params[:query].present?
      @restaurants = Restaurant.where.not(latitude: nil, longitude: nil).search_by_name(params[:query])
    else
      @restaurants = Restaurant.where.not(latitude: nil, longitude: nil)
    end
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
      }
    end
  end

    def show
    @restaurant = Restaurant.find(params[:id])

    @markers = [{
      lat: @restaurant.latitude,
      lng: @restaurant.longitude
    }]
  end
end
