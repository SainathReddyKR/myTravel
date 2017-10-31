class VehicleAttachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :passengerride
end
