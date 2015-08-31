class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new booking_params
    respond_to do |format|
      if @booking.save
        format.html { redirect_to root_path, notice: 'Booking was successfully created.' }
      else
        format.html { render root_path }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :room_id, :start_time, :end_time)
  end

end
