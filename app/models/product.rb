class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  #has_attachments :photos, maximum: 2
  validates :name, presence: true
end
