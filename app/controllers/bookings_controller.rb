class BookingsController < ApplicationController

  def index
    @bookings = Booking.all

  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new booking_params
      if @booking.valid
        @booking.save
      end
      redirect_to root_path

  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :room_id, :start_time, :end_time)
  end

end
