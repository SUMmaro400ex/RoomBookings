class WelcomeController < ApplicationController
  def index
    @booking = Booking.new
    @bookings = Booking.all
    @user = User.new
    @users = User.all
    @room = Room.new
    @rooms = Room.all
  end
end
