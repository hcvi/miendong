class Product < ActiveRecord::Base
  belongs_to :company
  belongs_to :service

  def image_url
    images.split(',').first
  end
end
