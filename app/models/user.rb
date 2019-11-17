class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plants, foreign_key: "owner_id", class_name: "Plant"
  has_one_attached :photo
  has_many :bookings
end
