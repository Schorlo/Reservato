class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all

    @restaurants = Restaurant.where.not(latitude: nil, longitude: nil)

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
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
