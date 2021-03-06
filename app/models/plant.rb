class Plant < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many :bookings
end
