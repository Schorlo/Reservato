class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :reservations

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader

end
