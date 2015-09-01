class WelcomeController < ApplicationController
  def index
    @booking = Booking.new
    @bookings = Booking.all
    @user = User.new
    @users = User.all
    @room = Room.new
    @rooms = Room.all

    if params[:name]
      @f_user = User.find_by(name: params[:name])
      @bookings = Booking.where(user: @f_user)
    end
    if params[:room_number]
      @f_room = Room.find_by(room_number: params[:room_number])
      @bookings = Booking.where(room: @f_room)
    end

    if start = params[:start]
      @filtered = []
      @bookings.each do |b|
        if b.start_time.to_date.to_s == start
          @filtered << b
        end
      end
      @bookings = @filtered
    end

    if start_time = params[:start_time]
      @filtered = []
      @bookings.each do |b|
        if b.start_time.seconds_until_end_of_day == start_time.to_time.seconds_until_end_of_day
          @filtered << b
        end
      end
      @bookings = @filtered
    end

    if end_date = params[:end]
      @filtered = []
      @bookings.each do |b|
        if b.end_time.to_date.to_s == end_date
          @filtered << b
        end
      end
      @bookings = @filtered
    end

    if end_time = params[:end_time]
      @filtered = []
      @bookings.each do |b|
        if b.end_time.seconds_until_end_of_day == end_time.to_time.seconds_until_end_of_day
          @filtered << b
        end
      end
      @bookings = @filtered
    end


  end
end
