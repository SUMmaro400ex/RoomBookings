class User < ActiveRecord::Base
  has_many :bookings
  has_many :rooms, :through => :bookings

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end

end
