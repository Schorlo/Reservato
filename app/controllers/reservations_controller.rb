class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def create
  end
end
