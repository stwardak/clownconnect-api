class BookingsController < ApplicationController
  def index
    @bookings = Booking.all 
    render :index
  end
end
