class BookingsController < ApplicationController
  def index
    @bookings = Booking.all 
    render :index
  end

  def create
    @booking = Booking.create(
      clown_id: params[:clown_id],
      user_id: params[:user_id],
      date: params[:date],
      time: params[:time],
      preferences: params[:preferences],
    )
    render :show
  end

end
