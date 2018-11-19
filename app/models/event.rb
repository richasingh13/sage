class Event < ApplicationRecord
  belongs_to :event_category, optional: true
  mount_uploader :cover_image, AvatarUploader
  validates :title, :description, :cover_image, :start_datetime, :end_datetime, :venue, :city, :state, :country, :latitude, :longitude, :event_category_id, presence: true
end
