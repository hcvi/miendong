# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  parent_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#  sub_service :text
#  image_url   :string(2083)     default("{}")
#  icon        :string(255)
#

class Service < ActiveRecord::Base
  validates :name, presence: true
  has_many :images
  accepts_nested_attributes_for :images
end
