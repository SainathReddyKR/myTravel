class Passengerride < ApplicationRecord


  belongs_to :user

  has_one :bookforpm

  has_many :requestforpms

  has_many :comments

  has_many :vehicle_attachments
  accepts_nested_attributes_for :vehicle_attachments


  validates :vehicle, presence: true
  validates :seats, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
  validates :model, presence: true
  validates :rent, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
  validates :fuel, presence: true
  validates :mileage, :numericality => { :greater_than_or_equal_to => 1 }, :allow_nil => true

  VEHICLE_LIST = ["Car", "Mini Van", "Bus", "Bike"]
  VEHICLES_LIST = [" ","Car", "Mini Van", "Bus", "Bike"]
  FUEL_LIST = ["Petrol", "Diesel", "CNG"]
  FUELS_LIST = [" ","Petrol", "Diesel", "CNG"]
end
