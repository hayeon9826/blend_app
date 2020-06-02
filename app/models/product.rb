class Product < ApplicationRecord
  # belongs_to :order, optional: true
  mount_uploader :image, ImageUploader

end
