class Booking < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
  validates :user, presence: true
  validates :room, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  def valid
    check = true
    if self.start_time.nil? || self.end_time.nil?
      check = false
    else
      bookings = Booking.all
      bookings.each do |book|
        if self.room.room_number == book.room.room_number
          if self.start_time >= book.start_time && self.start_time <= book.end_time
            check = false
          elsif self.end_time >= book.start_time && self.end_time <= book.end_time
            check = false
          end
        end
      end
    end
    check
  end

end
