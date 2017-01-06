# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Picture < ActiveRecord::Base
   mount_uploader :image, ImageUploader
end
