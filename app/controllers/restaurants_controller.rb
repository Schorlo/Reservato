class RestaurantsController < ApplicationController
    # skip_before_action :should_authenticate_customer!, only: [:index, :show]

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

  private

  def restaurant_params

    params.require(:restaurant).permit(:category, :name, :city, :photo)

  end
end
