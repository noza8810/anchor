class Alchol < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  validates :name, presence: true
end
