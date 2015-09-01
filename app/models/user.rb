class User < ActiveRecord::Base
  has_many :bookings
  has_many :rooms, :through => :bookings

end
