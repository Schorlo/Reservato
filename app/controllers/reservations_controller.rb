class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def create
  end
    private

  def reservations_params

    params.require(:reservation).permit(:datetime, :user, :comment, :restaurant)

  end
end
