# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string
#  tax_code          :string
#  address           :string
#  home_phone        :string
#  mobile_phone      :string
#  work_phone        :string
#  email             :string
#  ceo               :string
#  created_at        :datetime
#  updated_at        :datetime
#  longitude         :float
#  latitude          :float
#  background_url    :string(2083)
#  logo              :string
#  image_url         :string(2083)
#  facebook          :string
#  google_plus       :string
#  twiter            :string
#  youtube           :string
#  linkedin          :string
#  partners          :string           default("--- []\n")
#  about_us_title    :string
#  about_us_content  :text
#  image_title       :string
#  image_description :text
#

class Company < ActiveRecord::Base
  validates :name, presence: true
  validates :tax_code, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  has_many :images
  has_many :products
  accepts_nested_attributes_for :images

  translates :name, :address, :about_us_content, :about_us_title, :image_title, :image_description

  def image_thumb
    if images.any?
      images.first.image.thumb.url
    else
      asset_path("default.jpg")
    end
  end

  def image
    if images.any?
      images.first.image.url
    else
      asset_path("thumb_default.jpg")
    end
  end

  def phone
    str = []
    str << mobile_phone
    str << home_phone
    str << work_phone
    str.reject{ |x| x.nil? || x.empty? }.join(' - ')
  end
end
